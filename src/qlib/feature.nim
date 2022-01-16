import std/sugar
import nimqml
import ../nlib/geometry
import coordinates
import utils


QtObject:
  type
    Feature* = ref object of QObject
      geometry: Geometry
      kindVariant: QVariant
      coordinates: seq[Coordinates]
      coordinatesVariants: seq[QVariant]
      coordinatesVariantList: QVariant

  proc `$`*(self: Feature): string =
    $self.geometry

  proc delete(self: Feature)
  proc setup(self: Feature)
  proc newFeature*(geometry: Geometry): Feature =
    new(result, delete)
    result.geometry = geometry
    result.kindVariant = newQVariant($geometry.kind)
    result.coordinates = collect(newSeqOfCap(geometry.points.len)):
      for point in geometry.points:
        newCoordinates(point.latitude, point.longitude)
    result.coordinatesVariants = result.coordinates.toQVariants
    result.coordinatesVariantList = result.coordinatesVariants.toQVariant
    result.setup

  proc delete(self: Feature) =
    self.kindVariant.delete
    self.coordinatesVariantList.delete
    self.coordinates.delete
    self.QObject.delete

  proc setup(self: Feature) =
    self.QObject.setup

  proc getKind*(self: Feature): QVariant {.slot.} =
    self.kindVariant

  QtProperty[QVariant] kind:
    read = getKind

  proc getCoordinates*(self: Feature): QVariant {.slot.} =
    self.coordinatesVariantList

  QtProperty[QVariant] coordinates:
    read = getCoordinates