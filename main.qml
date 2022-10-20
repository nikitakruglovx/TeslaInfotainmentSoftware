import QtQuick 2.15
import QtQuick.Window 2.15
import "ui/BottomBar"
import "ui/RightScreen"
import "ui/LeftScreen"

Window {
    width: 1350
    height: 780
    visible: true
    title: qsTr("Tesla Infotainment")

    LeftScreen {
        id: leftscreen
    }

    BottomBar  {
        id: bottomBar
    }

    RightScreen {
        id: rightScreen
    }

}
