import QtQuick 2.0
import QtQuick.Window 2.0
import QtLocation 5.6
import QtPositioning 5.6
import QtQuick.Controls 2.12

Window {
    id: root
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
        zoomLevel: 13
        copyrightsVisible: false


        MouseArea {
            anchors.fill: parent
            onPressed: {
                let clickPoint = Qt.point(mouse.x,mouse.y)
                let clickCoordinates = theMap.toCoordinate(clickPoint)
                let searchRadius = 50
                console.log("click", clickPoint, clickCoordinates)
                clickMarker.center = clickCoordinates
                clickMarker.visible = true
                clickMarker.radius = searchRadius
                let osmResult = logic.osmQuery(clickCoordinates.latitude, clickCoordinates.longitude, searchRadius)
                // console.log(osmResult)
                clickPopupText.text = osmResult
                clickPopup.open()
            }
        }

        MapCircle {
            id: clickMarker
            radius: 50.0
            color: '#55FFFF00'
            border.width: 3
            visible: false
        }

        Popup {
            id: clickPopup
            topMargin: 100
            bottomMargin: 100
            leftMargin: 100
            rightMargin: 100
            modal: true
            focus: true
            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

            contentItem: ScrollView {
                width: parent.width
                height: parent.height
                clip: true
                Text {
                    id: clickPopupText
                    text: "Content"
                }
            }
        }

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
            }
        }

        Component {
            id: pointDelegate
            MapCircle {
                center {
                    latitude: feature.coordinates[0].latitude
                    longitude: feature.coordinates[0].longitude
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
                path: feature.coordinates.map(function(point) {
                    return QtPositioning.coordinate(point.latitude, point.longitude)
                })
            }
        }

        Component {
            id: polygonDelegate
            MapPolygon {
                color: '#5500FF00'
                path: feature.coordinates.map(function(point) {
                    return QtPositioning.coordinate(point.latitude, point.longitude)
                })
            }
        }

    }
}