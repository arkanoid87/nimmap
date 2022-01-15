import std/sugar
import nimqml
import geometry


QtObject:
  type
    QGeometry* = ref object of QObject
      geometry: Geometry
      vgeometry: QVariant
      vkind: QVariant

  proc `$`*(self: QGeometry): string =
    $self.geometry
     

  proc delete(self: QGeometry)
  proc setup(self: QGeometry)
  proc newQGeometry*(geometry: Geometry): QGeometry =
    new(result, delete)
    result.geometry = geometry
    result.vgeometry = block:
      case geometry.kind:
      of gkPoint:
        let point = geometry.point
        @[newQVariant(point.latitude), newQVariant(point.longitude)].toQVariant
      of gkLine:
        let 
          line = geometry.line
          variantLineSeq = collect(newSeq):
            for point in line:
              @[newQVariant(point.latitude), newQVariant(point.longitude)].toQVariant
        variantLineSeq.toQVariant
      of gkPolygon:
        let 
          polygon = geometry.polygon
          variantPolygonSeq = collect(newSeq):
            for point in polygon:
              @[newQVariant(point.latitude), newQVariant(point.longitude)].toQVariant
        variantPolygonSeq.toQVariant
    result.vkind = newQVariant($geometry.kind)
    result.setup

  proc delete(self: QGeometry) =
    self.vgeometry.delete
    self.vkind.delete
    self.QObject.delete

  proc setup(self: QGeometry) =
    self.QObject.setup

  proc getKind*(self: QGeometry): QVariant {.slot.} =
    self.vkind

  QtProperty[QVariant] kind:
    read = getKind

  proc getGeometry*(self: QGeometry): QVariant {.slot.} =
    self.vgeometry


  QtProperty[QVariant] geometry:
    read = getGeometry