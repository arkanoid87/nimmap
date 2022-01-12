import std/[strformat, sequtils, strutils]


type
  Point* = object
    longitude*: float # X
    latitude*: float # Y
  GeometryType* = enum
    gkPoint = "point",
    gkLine = "line",
    gkPolygon = "polygon"
  Geometry* = object
    case kind*: GeometryType
    of gkPoint: point*: Point
    of gkLine: line*: seq[Point]
    of gkPolygon: polygon*: seq[Point]
  Layer* = object
    name*: string
    kind*: GeometryType
    features*: seq[Geometry]

proc `$`*(geometry: Geometry): string =
  result = &"{geometry.kind}"
  case geometry.kind:
  of gkPoint:
    let point = geometry.point
    result &= &"[{point.latitude}, {point.longitude}]"
  of gkLine:
    let 
      line = geometry.line
      pointStr = line.mapIt(&"[{it.latitude}, {it.longitude}]").join(", ")
    result &= &"[{pointStr}]"
  of gkPolygon:
    let
      polygon = geometry.polygon
      pointStr = polygon.mapIt(&"[{it.latitude}, {it.longitude}]").join(", ")
    result &= &"[{pointStr}]"
