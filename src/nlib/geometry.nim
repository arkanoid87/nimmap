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
    kind*: GeometryType
    points*: seq[Point]
  Layer* = object
    name*: string
    kind*: GeometryType
    features*: seq[Geometry]

proc `$`*(geometry: Geometry): string =
  result = &"{geometry.kind}"
  case geometry.kind:
  of gkPoint:
    let point = geometry.points[0]
    result &= &"[{point.latitude}, {point.longitude}]"
  of gkLine, gkPolygon:
    let pointStr =  geometry.points.mapIt(&"[{it.latitude}, {it.longitude}]").join(", ")
    result &= &"[{pointStr}]"
