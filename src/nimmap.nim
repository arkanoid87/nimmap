import std/[os, strformat, sugar, compilesettings]

import nimqml

import qlib/maplayermodel
import nlib/geometry

when not defined(useFuthark):
  import nlib/gdal
else:
  import futhark
  importc:
    absPath "/usr/lib/clang/10/include"
    path "/usr/include/gdal"
    "gdal.h"
    "ogr_core.h"
    "ogr_api.h"


template wkbFlatten(x): OGRwkbGeometryType = OGR_GT_Flatten(cast[OGRwkbGeometryType](x))


proc load(gdalLayer: OGRLayerH): Layer =
  # let layerDefinition = gdalLayer.OGR_L_GetLayerDefn

  gdalLayer.OGR_L_ResetReading
  result.name = $gdalLayer.OGR_L_GetName

  while true:
    let feature = gdalLayer.OGR_L_GetNextFeature
    defer: OGR_F_Destroy(feature)

    if feature == nil:
      break
    
    # TODO handle fields
    # for iField in 0..<OGR_FD_GetFieldCount(hFDefn):
    #   var hFieldDefn: OGRFieldDefnH = OGR_FD_GetFieldDefn(hFDefn, iField)

    #   case OGR_Fld_GetType(hFieldDefn):
    #     of OFTInteger:
    #       echo &"{OGR_F_GetFieldAsInteger(feature, iField)},"
    #     of OFTInteger64:
    #       echo &"{OGR_F_GetFieldAsInteger64(feature, iField)},"
    #     of OFTReal:
    #       echo &"{OGR_F_GetFieldAsDouble(feature, iField):.4f},"
    #       echo &"{OGR_F_GetFieldAsString(feature, iField)},"
    #     else:
    #       echo &"{OGR_F_GetFieldAsString(feature, iField)},"

    let hGeometry = feature.OGR_F_GetGeometryRef
    if hGeometry == nil:
      raise newException(IOError, "Invalid geometry")

    let geometryType = hGeometry.OGR_G_GetGeometryType.wkbFlatten
    # dump geometryType
    case geometryType:
    of wkbPoint:
      let
        longitude: float = hGeometry.OGR_G_GetX(0)
        latitude: float = hGeometry.OGR_G_GetY(0)
        point: Point = Point(longitude: longitude, latitude: latitude)
      result.features.add Geometry(kind: gkPoint, points: @[point])
    of wkbLineString:
      let
        vertexCount = hGeometry.OGR_G_GetPointCount
        vertices = collect(newSeqOfCap(vertexCount)):
          for vertexIndex in 0..<vertexCount:
            let
              latitude: float = hGeometry.OGR_G_GetY(vertexIndex)
              longitude: float = hGeometry.OGR_G_GetX(vertexIndex)
            Point(longitude: longitude, latitude: latitude)
      result.features.add Geometry(kind: gkLine, points: vertices)
    of wkbPolygon:
      let 
        ringGeometry = hGeometry.OGR_G_GetGeometryRef(0)
        vertexCount = ringGeometry.OGR_G_GetPointCount
        vertices = collect(newSeqOfCap(vertexCount)):
          for vertexIndex in 0..<vertexCount:
            let
              latitude: float = ringGeometry.OGR_G_GetY(vertexIndex)
              longitude: float = ringGeometry.OGR_G_GetX(vertexIndex)
            Point(longitude: longitude, latitude: latitude)
      result.features.add Geometry(kind: gkPolygon, points: vertices)
    of wkbMultiPolygon:
      let ringCount = hGeometry.OGR_G_GetGeometryCount
      for ringIndex in 0..<ringCount:
        let 
          ringGeometry = hGeometry.OGR_G_GetGeometryRef(ringIndex)
          lineStringGeometry = ringGeometry.OGR_G_GetGeometryRef(0)
          lineStringPointCount = lineStringGeometry.OGR_G_GetPointCount
          vertices = collect(newSeqOfCap(lineStringPointCount)):
            for pointIndex in 0..<lineStringPointCount:
              let
                latitude: float = lineStringGeometry.OGR_G_GetY(pointIndex)
                longitude: float = lineStringGeometry.OGR_G_GetX(pointIndex)
              Point(longitude: longitude, latitude: latitude)
        result.features.add Geometry(kind: gkPolygon, points: vertices)
    else:
      raise newException(ValueError, &"Error unknown geometry: {geometryType} ({result.name})")


proc loadArgs(): seq[Layer] =
  if paramCount() < 1:
    echo "Usage: nimmap [<shp|gpkg|geojson>,..]"
    quit(1)

  collect(newSeq):
    for paramIndex in 1..paramCount():
      let filename = paramStr(paramIndex)
      if not filename.fileExists:
        raise newException(IOError, &"File not found: {filename}")

      echo &"Opening {filename}"

      GDALAllRegister()
      let gdalDataset: GDALDatasetH = GDALOpenEx(filename.cstring, GDAL_OF_VECTOR, nil, nil, nil)
      defer: GDALClose(gdalDataset)

      if gdalDataset == nil:
        raise newException(IOError, "Error opening dataset")

      let layerCount = gdalDataset.GDALDatasetGetLayerCount
      for layerIndex in 0..<layerCount:
        let 
          gdalLayer = gdalDataset.GDALDatasetGetLayer(layerIndex)
        gdalLayer.load      


proc main() =
  let layers = loadArgs()
  echo &"Layer loading completed ({layers.len})"

  let app = newQApplication()
  defer: app.delete()

  let engine = newQQmlApplicationEngine()
  defer: engine.delete()

  let mapModels = collect(newSeqOfCap(layers.len)):
    for layer in layers:
      newMapLayerModel(layer)
  defer:
    for mapModel in mapModels:
      mapModel.delete

  let mapModelVariants = collect(newSeqOfCap(mapModels.len)):
    for mapModel in mapModels:
      newQVariant(mapModel)
  defer:
    for mapModelVariant in mapModelVariants:
      mapModelVariant.delete

  let mapModelVariantList = mapModelVariants.toQVariant
  defer: mapModelVariantList.delete
  engine.setRootContextProperty("mapLayerModelList", mapModelVariantList)

  engine.load("qml/Main.qml")
  app.exec()


if isMainModule:
  main()
