import QtQuick 2.15
import QtQuick.Window 2.15

Window {
  id: window
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Loader {
    id: roundButton
    source: "qrc:/bottom_menu.qml"
    anchors.rightMargin: 0
    anchors.leftMargin: 0
    anchors.bottomMargin: 0
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
  }
}
