import QtQuick 2.15
import QtQuick.Window 2.15

Window {
  id: window
  width: 480
  height: 800
  visible: true
  title: qsTr("Transmitter")

  Rectangle {
    opacity: 1.0
    color: "#181818"
//    color: "#FFFFFF"
    anchors.fill: parent
  }

  Loader {
    id: bottomMenu
    source: "bottom_menu.qml"
    anchors.rightMargin: 0
    anchors.leftMargin: 0
    anchors.bottomMargin: 0
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
  }

  Loader {
    id: statusBar
    source: "status_bar.qml"
    anchors.rightMargin: 16
    anchors.leftMargin: 16
    anchors.topMargin: 16
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
  }
}
