import std/[sugar]
import nimqml


QtObject:
  type
    Coordinates* = ref object of QObject
      latitudeVariant: QVariant
      longitudeVariant: QVariant

  proc delete(self: Coordinates)
  proc setup(self: Coordinates)
  proc newCoordinates*(latitude, longitude: float): Coordinates =
    new(result, delete)
    result.latitudeVariant = newQVariant(latitude)
    result.longitudeVariant = newQVariant(longitude)
    result.setup

  proc delete(self: Coordinates) =
    self.latitudeVariant.delete
    self.longitudeVariant.delete
    self.QObject.delete

  proc setup(self: Coordinates) =
    self.QObject.setup

  proc getLatitude*(self: Coordinates): QVariant {.slot.} =
    self.latitudeVariant

  QtProperty[QVariant] latitude:
    read = getLatitude

  proc getLongitude*(self: Coordinates): QVariant {.slot.} =
    self.longitudeVariant

  QtProperty[QVariant] longitude:
    read = getLongitude