import QtQuick 2.15
import QtLocation 5.15
import QtPositioning 5.15

Rectangle {
    id: rightScreen
    anchors {
        top: parent.top
        bottom: bottomBar.top
        right: parent.right
    }
    Plugin {
        id: mapPlugin
        name: "mapboxgl"
        }

    Map {
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(59.97, 30.32) // Saint-Petersburg Location
        zoomLevel: 15
    }

    Image {
        id: lockIcon
        anchors {
            left: parent.left
            top: parent.top
            margins: 20
        }

        width: parent.width / 40
        fillMode: Image.PreserveAspectFit
        source: { systemHandler.CarLocker ? "qrc:/ui/assets/unlock.png" : "qrc:/ui/assets/lock.png" }

        MouseArea {
            anchors.fill: parent
            onClicked: systemHandler.setCarLocker(!systemHandler.CarLocker)
        }
}
    Text {
        id: dateTimer
        anchors {
            left: lockIcon.right
            bottom: lockIcon.bottom
            leftMargin: 30
        }
        color: "black"
        font.pixelSize: 15
        font.bold: false
        text: systemHandler.dateTime
    }

    Text {
        id: temperaturyId
        anchors {
            left: dateTimer.right
            bottom: dateTimer.bottom
            leftMargin: 30
        }
        color: "black"
        font.pixelSize: 15
        font.bold: false
        text: systemHandler.Temperature + "°C"
    }

    SearchBar {
        id: searchBar
        width: parent.width * 1/3
        height: parent.height * 1/12
        anchors {
            left: lockIcon.left
            top: lockIcon.bottom
            topMargin: 15
        }

    }

    width: parent.width * 2/3
}
