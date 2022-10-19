import QtQuick 2.15
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.15

Item {
  id: homePage

  signal transitionToTraining()
  signal transitionToSettings()

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
    anchors.rightMargin: 16
    anchors.leftMargin: 16
    anchors.topMargin: 32
    font.weight: Font.Bold
    font.italic: false
    font.capitalization: Font.AllUppercase
    font.family: "Rubik"
  }

  Item {
    id: statusItem
    height: 32
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: timeText.bottom
    anchors.rightMargin: 16
    anchors.topMargin: 24
    anchors.leftMargin: 16

    Button {
      id: statusButton
      anchors.left: parent.left
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      anchors.topMargin: 0
      anchors.leftMargin: 0
      anchors.bottomMargin: 0
      flat: true

      contentItem: Item {
        id: item1
        Image {
          id: connectionStatusIcon
          width: 32
          height: 32
          anchors.verticalCenter: parent.verticalCenter
          anchors.left: parent.left
          source: "qrc:/icons/home_page/chain.svg"
          anchors.leftMargin: 0
          fillMode: Image.PreserveAspectFit
        }

        Text {
          id: connectionStatusText
          color: "#ffffff"
          text: qsTr("Car is connected")
          anchors.verticalCenter: parent.verticalCenter
          anchors.left: connectionStatusIcon.right
          anchors.right: parent.right
          font.pixelSize: 16
          anchors.rightMargin: 0
          anchors.leftMargin: 12
        }
      }
    }

    Label {
      id: statusDetailsLabel
      color: "#97ec49"
      text: "Details"
      anchors.verticalCenter: parent.verticalCenter
      anchors.right: parent.right
      font.pixelSize: 16
      horizontalAlignment: Text.AlignRight
      verticalAlignment: Text.AlignVCenter
      font.styleName: "Bold"
      font.weight: Font.Medium
      font.bold: false
      font.family: "Cantarell"
      anchors.rightMargin: 0
    }
  }

  Item {
    id: wifiItem
    height: 32
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: statusItem.bottom
    anchors.rightMargin: 16
    anchors.topMargin: 12
    anchors.leftMargin: 16

    Button {
      id: wifiButton
      anchors.left: parent.left
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      anchors.topMargin: 0
      anchors.leftMargin: 0
      anchors.bottomMargin: 0
      flat: true

      contentItem: Item {
        id: wifiContentItem
        Image {
          id: wifiIcon
          width: 32
          height: 32
          anchors.verticalCenter: parent.verticalCenter
          anchors.left: parent.left
          source: "qrc:/icons/home_page/wifi.svg"
          anchors.leftMargin: 0
          fillMode: Image.PreserveAspectFit
        }

        Text {
          id: wifiText
          color: "#ffffff"
          text: qsTr("Wi-Fi is on")
          anchors.verticalCenter: parent.verticalCenter
          anchors.left: wifiIcon.right
          anchors.right: parent.right
          font.pixelSize: 16
          anchors.rightMargin: 0
          anchors.leftMargin: 12
        }
      }
    }

    Label {
      id: wifiDetailsLabel
      color: "#97ec49"
      text: "Details"
      anchors.verticalCenter: parent.verticalCenter
      anchors.right: parent.right
      font.pixelSize: 16
      horizontalAlignment: Text.AlignRight
      verticalAlignment: Text.AlignVCenter
      font.styleName: "Bold"
      font.weight: Font.Medium
      font.bold: false
      font.family: "Cantarell"
      anchors.rightMargin: 0
    }
  }

  Button {
    id: diagnosticsButton
    height: 101
    anchors.left: parent.left
    anchors.right: parent.horizontalCenter
    anchors.top: wifiItem.bottom
    anchors.rightMargin: 8
    anchors.leftMargin: 16
    anchors.topMargin: 24
    flat: true

    background: Rectangle {
      id: diagnosticsButtonBg
      width: parent.width
      height: parent.height
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
    anchors.left: parent.horizontalCenter
    anchors.right: parent.right
    anchors.top: wifiItem.bottom
    anchors.topMargin: 24
    anchors.rightMargin: 16
    anchors.leftMargin: 8

    onClicked: {
      homePage.transitionToTraining()
    }

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
        anchors.topMargin: 6
      }
    }

    flat: true

    background: Rectangle {
      id: goTrainingButtonBg
      width: parent.width
      height: parent.height
      opacity: 1.0
      color: "#121212"
      anchors.fill: parent
      radius: 24
    }
  }

  Button {
    id: settingButton
    height: 101
    anchors.left: parent.left
    anchors.right: parent.horizontalCenter
    anchors.top: diagnosticsButton.bottom
    anchors.rightMargin: 8
    anchors.leftMargin: 16
    anchors.topMargin: 16
    flat: true

    onClicked: homePage.transitionToSettings()

    background: Rectangle {
      id: settingButtonBg
      width: parent.width
      height: parent.height
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
        anchors.top: settingButtonIcon.bottom
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
      width: parent.width
      height: parent.height
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
        anchors.topMargin: 0
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
      width: parent.width
      height: parent.height
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
        anchors.topMargin: 0
      }
    }
  }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:800;width:480}
}
##^##*/
