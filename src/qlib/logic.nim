import std/[json]
import nimqml
import ../nlib/[osm,geometry]

QtObject:
  type
    Logic* = ref object of QObject

  proc delete(self: Logic)
  proc setup(self: Logic)
  proc newLogic*(): Logic =
    new(result, delete)
    result.setup

  proc delete(self: Logic) =
    self.QObject.delete

  proc setup(self: Logic) =
    self.QObject.setup

  proc osmQuery(self: Logic, latitude: float, longitude: float, radius: float): string {.slot.} =
    osmQuery(latitude, longitude, radius).pretty