import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11

Item {
  id: statusBarItem
  width: 480
  height: 56

  // Background
  Rectangle {
    id: statusBarBg
    opacity: 0.75
    color: "#000000"
    radius: 100
    anchors.fill: parent
  }

  Button {
    id: statusPresetIcon
    width: 40
    height: 40
    anchors.verticalCenter: parent.verticalCenter
    anchors.left: parent.left
    anchors.leftMargin: 16
    padding: 0
    flat: true
    display: AbstractButton.IconOnly

    icon.height: height
    icon.width: height
    icon.color: "#ffffff"

    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter

    state: "none"
    states: [
      State {
        name: "none"
        PropertyChanges { target: statusPresetIcon; visible: false }
        PropertyChanges { target: statusPresetIcon; width: 0 }
        PropertyChanges { target: statusPresetIcon; height: 0 }
      },
      State {
        name: "play"
        PropertyChanges { target: statusPresetIcon; visible: true }
        PropertyChanges { target: statusPresetIcon; width: 40 }
        PropertyChanges { target: statusPresetIcon; height: 40 }
      }
    ]
  }

  Text {
    id: currentPresetText
    color: "#ffffff"
    text: qsTr("No preset")
    elide: Text.ElideLeft
    anchors.verticalCenter: parent.verticalCenter
    anchors.left: statusPresetIcon.right
    anchors.right: signalIcon.left

    font.pixelSize: 16
    verticalAlignment: Text.AlignVCenter
    anchors.rightMargin: 4
    anchors.leftMargin: 4
    font.italic: true
    font.weight: Font.Black
    font.family: "Rubik"

    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
  }

  Button {
    id: signalIcon
    width: 40
    height: 40
    anchors.verticalCenter: parent.verticalCenter
    anchors.right: batteryIcon.left
    padding: 0
    flat: true
    display: AbstractButton.IconOnly
    anchors.rightMargin: 4

    icon.height: parent.height
    icon.width: parent.height
    icon.source: "qrc:/icons/status_bar/signal.svg"
    icon.color: "#97EC49"

    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
  }

  Button {
    id: batteryIcon
    width: 40
    height: 40
    anchors.verticalCenter: parent.verticalCenter
    anchors.right: parent.right
    padding: 0
    flat: true
    display: AbstractButton.IconOnly
    anchors.rightMargin: 16

    icon.height: parent.height
    icon.width: parent.height
    icon.source: "qrc:/icons/status_bar/battery.svg"
    icon.color: "#97EC49"

    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
  }
}


