import QtQuick 2.15

Rectangle {
    id: bottomBar
    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }
    color: "black"
    height: parent.height / 12

    Image {
        id: carSettings
        source: "qrc:/ui/assets/car.png"
        fillMode: Image.PreserveAspectFit
        width: 50
        height: 50

        anchors {
            left: parent.left
            leftMargin: 30
            verticalCenter: parent.verticalCenter

        }
    }

    Rectangle {
        id: passenderTempTarget
        anchors {
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            rightMargin: 180
        }
        color: "black"
        width: height / 2

        Text {
            id: passengerincrementTempNext
            text: ">"
            color: "#EDECEC"
            font.pixelSize: 15
            anchors.centerIn: parent
        }

        Text {
            id: passengerTargetT
            text: targetTempHadnler.targetTemp
            color: "white"
            font.pixelSize: 30

            anchors {
                right: passengerincrementTempNext.left
                verticalCenter: parent.verticalCenter
                rightMargin: 20
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: targetTempHadnler.incrementTargetTemp( + 1 )
        }
    }

    Rectangle {
        id: iuo
        anchors {
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            rightMargin: 260
        }
        color: "black"
        width: height / 2

        Text {
            id: passengerincrementTempBack
            text: "<"
            color: "#EDECEC"
            font.pixelSize: 15
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: targetTempHadnler.incrementTargetTemp( - 1 )
        }

    }

    Rectangle {
        property string basecolor: "#EDECEC"

        id: passengerMinimTarget
        anchors {
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            rightMargin: 30
        }
        color: "black"
        width: height / 2

        Text {
            id: incrementSoundNext
            text: ">"
            color: "#EDECEC"
            font.pixelSize: 15
            anchors.centerIn: parent
        }

        Image {
            id: volumTarget
            source: "qrc:/ui/assets/medium-volume.png"
            fillMode: Image.PreserveAspectFit
            width: 40
            height: 40

            anchors {
                right: incrementSoundNext.right
                rightMargin: 30
                verticalCenter: parent.verticalCenter

            }
        }

    }
    Rectangle {
        id: passengerMaxTarget
        anchors {
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            rightMargin: 120
        }
        color: "black"
        width: height / 2

        Text {
            id: incrementSoundBack
            text: "<"
            color: "#EDECEC"
            font.pixelSize: 15
            anchors.centerIn: parent
        }
    }

    Rectangle {
        property string basecolor: "#EDECEC"
        id: minimTarget
        anchors {
            left: carSettings.right
            bottom: parent.bottom
            top: parent.top
            leftMargin: 80
        }
        color: "black"
        width: height / 2

        Text {
            id: texticonBack
            anchors.centerIn: parent
            font.pixelSize: 15
            text: "<"
            color: "#EDECEC"

            MouseArea {
                anchors.fill: parent
                onClicked: targetTempHadnler.incrementTargetTemp( - 1 )
            }
        }


    }

    Text {
        id: targetT
        text: targetTempHadnler.targetTemp
        color: "white"
        font.pixelSize: 30

        anchors {
            left: minimTarget.right
            verticalCenter: parent.verticalCenter
            leftMargin: 10
        }
    }

    Rectangle {
        id: maxTarget
        anchors {
            left: targetT.right
            bottom: parent.bottom
            top: parent.top
            leftMargin: 10
        }
        color: "black"
        width: height / 2

        Text {
            id: texticonNext
            anchors.centerIn: parent
            font.pixelSize: 15
            text: ">"
            color: "white"

            MouseArea {
                anchors.fill: parent
                onClicked: targetTempHadnler.incrementTargetTemp( + 1 )
            }
        }
    }

}
