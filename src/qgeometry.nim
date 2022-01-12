import std/sugar
import nimqml
import geometry


QtObject:
  type
    QGeometry* = ref object of QObject
      geometry: Geometry

  proc `$`*(self: QGeometry): string =
    $self.geometry
     

  proc delete(self: QGeometry)
  proc setup(self: QGeometry)
  proc newQGeometry*(geometry: Geometry): QGeometry =
    new(result, delete)
    result.geometry = geometry
    result.setup

  proc delete(self: QGeometry) =
    self.QObject.delete

  proc setup(self: QGeometry) =
    self.QObject.setup

  proc getKind*(self: QGeometry): QVariant {.slot.} =
    newQVariant($self.geometry.kind)

  QtProperty[QVariant] kind:
    read = getKind

  proc getGeometry*(self: QGeometry): QVariant {.slot.} =
    case self.geometry.kind:
    of gkPoint:
      let point = self.geometry.point
      result = @[newQVariant(point.latitude), newQVariant(point.longitude)].toQVariant
    of gkLine:
      let 
        line = self.geometry.line
        variantLineSeq = collect(newSeq):
          for point in line:
            @[newQVariant(point.latitude), newQVariant(point.longitude)].toQVariant
      result = variantLineSeq.toQVariant
    of gkPolygon:
      let 
        polygon = self.geometry.polygon
        variantPolygonSeq = collect(newSeq):
          for point in polygon:
            @[newQVariant(point.latitude), newQVariant(point.longitude)].toQVariant
      result = variantPolygonSeq.toQVariant

  QtProperty[QVariant] geometry:
    read = getGeometry