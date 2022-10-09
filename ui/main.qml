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
    anchors.fill: parent
  }

  Loader {
    id: roundButton
    source: "bottom_menu.qml"
    anchors.rightMargin: 0
    anchors.leftMargin: 0
    anchors.bottomMargin: 0
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
  }
}
