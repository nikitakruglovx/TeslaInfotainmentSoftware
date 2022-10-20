import QtQuick 2.15

Rectangle {
    id: searchBar
    radius: 5
    color: "#faf9f5"

    Image {
        id: searchIcon
        anchors {
            left: parent.left
            leftMargin: 25
            verticalCenter: parent.verticalCenter
        }
        height: parent.height * .43
        fillMode: Image.PreserveAspectFit

        source: "qrc:/ui/assets/search.png"
    }

    Text {
        id: searchbarPlaceholder
        color: "#b2adb1"
        visible: searchInput.text === ""
        text: qsTr("Navigation")
        font.pixelSize: 14
        anchors {
            verticalCenter: parent.verticalCenter
            left: searchIcon.right
            leftMargin: 20
        }
    }

    TextInput {
        id: searchInput
        color: "#b2adb1"
        clip: true
        font.pixelSize: 14
        anchors {
            top: parent.top
            bottom: parent.bottom
            right: parent.right
            left: searchIcon.right
            leftMargin: 20
        }

        verticalAlignment: Text.AlignVCenter
    }
}
