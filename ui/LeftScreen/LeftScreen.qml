import QtQuick 2.15

Rectangle {
    id: leftScreen
    anchors {
        left: parent.left
        right: rightScreen.right
        bottom: bottomBar.top
        top: parent.top
    }
    color: "white"

    Image {
        id: carModel
        source: "qrc:/ui/assets/car-model.png"
        width: 350
        height: 350
        anchors {
            verticalCenter: parent.verticalCenter
        }

        x: 40
        y: 170
        fillMode: Image.PreserveAspectFit

    }
}

