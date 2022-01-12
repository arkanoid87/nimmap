import QtQuick 2.0
import QtQuick.Window 2.0
import QtLocation 5.6
import QtPositioning 5.6

Window {
    width: 800
    height: 800
    visible: true

    Plugin {
        id: mapPlugin
        // name: "osm"
        name: "mapboxgl"
    }

    Map {
        id: theMap
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(45.4642, 9.1900)
        zoomLevel: 10
        copyrightsVisible: false

        Repeater {
            model: mapLayerModelList
            MapItemView {
                function geometryTypeToDelegate(type) {
                    switch(type) {
                        case "point": return pointDelegate; break;
                        case "line": return lineDelegate; break;
                        case "polygon": return polygonDelegate; break;
                        default: return undefined
                    }
                }
                model: modelData
                delegate: geometryTypeToDelegate(modelData.getGeometryType())

                // Component.onCompleted: {
                //     console.log(modelData.getGeometryType())
                // }
            }
        }

        Component {
            id: pointDelegate
            MapCircle {
                center {
                    latitude: feature.geometry[0]
                    longitude: feature.geometry[1]
                }
                radius: 50.0
                color: 'red'
                border.width: 3
            }
        }

        Component {
            id: lineDelegate
            MapPolyline {
                line.color: 'blue'
                line.width: 2
                path: feature.geometry.map(function(point) {
                    return QtPositioning.coordinate(point[0], point[1])
                })
            }
        }

        Component {
            id: polygonDelegate
            MapPolygon {
                color: '#5500FF00'
                path: feature.geometry.map(function(point) {
                    return QtPositioning.coordinate(point[0], point[1])
                })
            }
        }

    }
}