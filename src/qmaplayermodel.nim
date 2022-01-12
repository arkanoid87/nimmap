import std/[tables, sequtils, sugar]
import nimqml
import geometry
import qgeometry


type
  RoleNames {.pure.} = enum
    rmFeature = UserRole + 1,


QtObject:
  type
    QMapLayerModel* = ref object of QAbstractListModel
      layer: Layer
      features: seq[QGeometry]

  proc delete(self: QMapLayerModel)
  proc setup(self: QMapLayerModel)
  proc newQMapLayerModel*(layer: Layer): QMapLayerModel =
    new(result, delete)
    result.layer = layer
    result.features = collect(newSeqOfCap(layer.features.len)):
      for feature in layer.features:
        newQGeometry(feature)
    result.setup

  proc delete(self: QMapLayerModel) =
    for feature in self.features:
      feature.delete
    self.QAbstractListModel.delete

  proc setup(self: QMapLayerModel) =
    self.QAbstractListModel.setup

  proc getGeometryType(self: QMapLayerModel): QVariant {.slot.} =
    if self.features.len == 0:
      raise newException(IndexDefect, "The layer is empty")
    else: self.features[0].getKind

  method rowCount(self: QMapLayerModel, index: QModelIndex = nil): int =
    return self.features.len

  method data(self: QMapLayerModel, index: QModelIndex, role: int): QVariant =
    if not index.isValid:
      return
    if index.row < 0 or index.row >= self.features.len:
      return
    let qgeometry = self.features[index.row]
    case role.RoleNames:
    of rmFeature:
      result = newQVariant(qgeometry)

  method roleNames(self: QMapLayerModel): Table[int, string] = { 
        RoleNames.rmFeature.int: "feature",
    }.toTable