import QtQuick 2.15
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.15

Item {
  id: homePage

  Text {
    id: timeText
    height: 77
    color: "#ffffff"
    text: qsTr("12:39")
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    font.pixelSize: 64
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    anchors.rightMargin: 0
    anchors.leftMargin: 0
    anchors.topMargin: 32
    font.weight: Font.Bold
    font.italic: false
    font.capitalization: Font.AllUppercase
    font.family: "Rubik"
  }

  Button {
    id: diagnosticsButton
    width: 216
    height: 101
    anchors.left: parent.left
    anchors.top: timeText.bottom
    anchors.leftMargin: 16
    anchors.topMargin: 32
    flat: true

    background: Rectangle {
      id: diagnosticsButtonBg
      implicitWidth: diagnosticsButton.width
      implicitHeight: diagnosticsButton.height
      opacity: 1.0
      color: "#121212"
      anchors.fill: parent
      radius: 24
    }

    contentItem: Item {
      Image {
        id: diagnosticsIcon
        width: 32
        height: 32
        anchors.left: parent.left
        anchors.top: parent.top
        source: "qrc:/icons/home_page/diagnostics.svg"
        anchors.topMargin: 16
        anchors.leftMargin: 16
        fillMode: Image.PreserveAspectFit
      }

      Text {
        id: diagnosticsText
        color: "#97ec49"
        text: qsTr("Diagnostics")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: diagnosticsIcon.bottom
        anchors.bottom: parent.bottom
        font.pixelSize: 24
        anchors.bottomMargin: 16
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.topMargin: 6
      }
    }
  }

  Button {
    id: goTrainingButton
    height: 218
    text: qsTr("Go\ntraining")
    anchors.left: diagnosticsButton.right
    anchors.right: parent.right
    anchors.top: timeText.bottom
    anchors.topMargin: 32
    anchors.rightMargin: 16
    anchors.leftMargin: 16
    Layout.fillWidth: true

    contentItem: Item {
      Image {
        id: goTrainingIcon
        width: 32
        height: 32
        anchors.left: parent.left
        anchors.top: parent.top
        source: "qrc:/icons/home_page/go_training.svg"
        anchors.topMargin: 16
        anchors.leftMargin: 16
        fillMode: Image.PreserveAspectFit
      }

      Text {
        id: goTrainingText
        color: "#97ec49"
        text: qsTr("Go\ntraining")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: goTrainingIcon.bottom
        anchors.bottom: parent.bottom
        font.pixelSize: 24
        lineHeight: 0.8
        anchors.bottomMargin: 16
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.topMargin: 10
      }
    }

    flat: true

    background: Rectangle {
      id: goTrainingButtonBg
      implicitWidth: goTrainingButton.width
      implicitHeight: goTrainingButton.height
      opacity: 1.0
      color: "#121212"
      anchors.fill: parent
      radius: 24
    }
  }

  Button {
    id: settingButton
    width: 216
    height: 101
    anchors.left: parent.left
    anchors.top: diagnosticsButton.bottom
    anchors.leftMargin: 16
    anchors.topMargin: 16
    flat: true

    background: Rectangle {
      id: settingButtonBg
      implicitWidth: settingButton.width
      implicitHeight: settingButton.height
      opacity: 1.0
      color: "#121212"
      anchors.fill: parent
      radius: 24
    }

    contentItem: Item {
      Image {
        id: settingButtonIcon
        width: 32
        height: 32
        anchors.left: parent.left
        anchors.top: parent.top
        source: "qrc:/icons/home_page/setting.svg"
        anchors.topMargin: 16
        anchors.leftMargin: 16
        fillMode: Image.PreserveAspectFit
      }

      Text {
        id: settingButtonText
        color: "#97ec49"
        text: qsTr("Setting")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: goTrainingIcon.bottom
        anchors.bottom: parent.bottom
        font.pixelSize: 24
        lineHeight: 0.8
        anchors.bottomMargin: 16
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.topMargin: 10
      }
    }
  }

  Button {
    id: setPresetButton
    height: 64
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: settingButton.bottom
    anchors.rightMargin: 16
    anchors.leftMargin: 16
    anchors.topMargin: 16
    flat: true

    background: Rectangle {
      id: setPresetButtonBg
      implicitWidth: setPresetButton.width
      implicitHeight: setPresetButton.height
      opacity: 1.0
      color: "#121212"
      anchors.fill: parent
      radius: 24
    }

    contentItem: Item {
      Image {
        id: setPresetButtonIcon
        width: 32
        height: 32
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        source: "qrc:/icons/home_page/set_preset.svg"
        anchors.leftMargin: 16
        fillMode: Image.PreserveAspectFit
      }

      Text {
        id: setPresetButtonText
        color: "#97ec49"
        text: qsTr("Set preset")
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: setPresetButtonIcon.right
        anchors.right: parent.right
        font.pixelSize: 24
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.8
        anchors.rightMargin: 16
        anchors.leftMargin: 12
        anchors.topMargin: 10
      }
    }
  }

  Button {
    id: aboutButton
    height: 64
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: setPresetButton.bottom
    anchors.rightMargin: 16
    anchors.leftMargin: 16
    anchors.topMargin: 16
    flat: true

    background: Rectangle {
      id: aboutButtonBg
      implicitWidth: aboutButton.width
      implicitHeight: aboutButton.height
      opacity: 1.0
      color: "#121212"
      anchors.fill: parent
      radius: 24
    }

    contentItem: Item {
      Image {
        id: aboutButtonIcon
        width: 32
        height: 32
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        source: "qrc:/icons/home_page/about.svg"
        anchors.leftMargin: 16
        fillMode: Image.PreserveAspectFit
      }

      Text {
        id: aboutButtonText
        color: "#97ec49"
        text: qsTr("About")
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: aboutButtonIcon.right
        anchors.right: parent.right
        font.pixelSize: 24
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.8
        anchors.rightMargin: 16
        anchors.leftMargin: 12
        anchors.topMargin: 10
      }
    }
  }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:800;width:480}D{i:17}
}
##^##*/
