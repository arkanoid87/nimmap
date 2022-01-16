import std/[strformat, httpclient, uri]
import json


proc osmQuery*(latitude, longitude, radius: float): JsonNode =
  let
    overpass_url = "http://overpass-api.de/api/interpreter"
    params = [("data", &"""
[out:json];
node(around:{radius},{$latitude},{$longitude});
out tags;
      """)].encodeQuery
    headers = newHttpHeaders({ "Content-Type": "x-www-form-urlencoded" })
    client = newHttpClient(headers=headers)
    json = client.request(overpass_url & "?" & params, HttpGet).body.parseJson
  var res = newJArray()
  for element in json["elements"]:
    if "tags" in element:
      res.add element
  res
  
if isMainModule:
  let response = osmQuery(45.4642, 9.1900, 100)

  echo response