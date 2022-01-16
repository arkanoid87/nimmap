import std/[tables, sequtils, sugar]
import nimqml
import ../nlib/geometry
import feature
import utils


type
  RoleNames {.pure.} = enum
    rmFeature = UserRole + 1,


QtObject:
  type
    MapLayerModel* = ref object of QAbstractListModel
      layer: Layer
      features: seq[Feature]

  proc delete(self: MapLayerModel)
  proc setup(self: MapLayerModel)
  proc newMapLayerModel*(layer: Layer): MapLayerModel =
    new(result, delete)
    result.layer = layer
    result.features = collect(newSeqOfCap(layer.features.len)):
      for feature in layer.features:
        newFeature(feature)
    result.setup

  proc delete(self: MapLayerModel) =
    self.features.delete
    self.QAbstractListModel.delete

  proc setup(self: MapLayerModel) =
    self.QAbstractListModel.setup

  proc getGeometryType(self: MapLayerModel): QVariant {.slot.} =
    if self.features.len == 0:
      raise newException(IndexDefect, "The layer is empty")
    else: self.features[0].getKind

  method rowCount(self: MapLayerModel, index: QModelIndex = nil): int =
    return self.features.len

  method data(self: MapLayerModel, index: QModelIndex, role: int): QVariant =
    if not index.isValid:
      return
    if index.row < 0 or index.row >= self.features.len:
      return
    case role.RoleNames:
    of rmFeature:
      result = newQVariant(self.features[index.row])

  method roleNames(self: MapLayerModel): Table[int, string] = { 
        RoleNames.rmFeature.int: "feature",
    }.toTable