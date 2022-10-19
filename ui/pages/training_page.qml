import QtQuick 2.15
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.15
import Qt.labs.qmlmodels 1.0

Item {
  id: trainingPage

  Item {
    id: tabItem
    height: 110
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.rightMargin: 0
    anchors.leftMargin: 0
    anchors.topMargin: 0

    Button {
      id: trainingTabButton
      width: 156
      height: 62
      anchors.top: parent.top
      anchors.horizontalCenterOffset: -86
      anchors.horizontalCenter: parent.horizontalCenter
      anchors.topMargin: 24
      checkable: true
      checked: true
      display: AbstractButton.TextOnly
      flat: true
      state: "active"
      autoExclusive: true

      onClicked: {
        stackLayout.currentIndex = 0
      }

      background: Rectangle {
        id: trainingTabBg
        color: "#ffffff"
        radius: 100
        anchors.fill: parent
      }

      Text {
        id: trainingTabText
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 24
        font.weight: Font.DemiBold
        text: qsTr("Training")
        anchors.fill: parent
      }

      states: [
        State {
          name: "active"; when: trainingTabButton.checked
          PropertyChanges { target: trainingTabBg; opacity: 1.0 }
          PropertyChanges { target: trainingTabText; color: "black" }
        },
        State {
          name: "noactive"; when: !trainingTabButton.checked
          PropertyChanges { target: trainingTabBg; opacity: 0.0 }
          PropertyChanges { target: trainingTabText; color: "#97EC49" }
        }
      ]

      transitions: Transition {
        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
      }
    }

    Button {
      id: historyTabButton
      width: 156
      height: 62
      anchors.top: parent.top
      anchors.horizontalCenterOffset: 86
      anchors.horizontalCenter: parent.horizontalCenter
      anchors.topMargin: 24
      checkable: true
      checked: false
      display: AbstractButton.TextOnly
      flat: true
      state: "noactive"
      autoExclusive: true

      background: Rectangle {
        id: historyTabBg
        color: "#ffffff"
        radius: 100
        anchors.fill: parent
      }

      Text {
        id: historyTabText
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 24
        font.weight: Font.DemiBold
        text: qsTr("History")
      }

      onClicked: {
        stackLayout.currentIndex = 1
      }

      states: [
        State {
          name: "active"; when: historyTabButton.checked
          PropertyChanges { target: historyTabBg; opacity: 1.0 }
          PropertyChanges { target: historyTabText; color: "black" }
        },
        State {
          name: "noactive"; when: !historyTabButton.checked
          PropertyChanges { target: historyTabBg; opacity: 0.0 }
          PropertyChanges { target: historyTabText; color: "#97EC49" }
        }
      ]

      transitions: Transition {
        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
      }
    }

  }

  StackLayout {
    id: stackLayout
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: tabItem.bottom
    anchors.bottom: parent.bottom
    currentIndex: 0
    anchors.bottomMargin: 0
    anchors.topMargin: 0
    anchors.rightMargin: 0
    anchors.leftMargin: 0

    Item {
      id: timeTab
      Layout.fillHeight: true
      Layout.fillWidth: true

      Item {
        id: time_item
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: raceControlItem.bottom
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        anchors.rightMargin: 24
        anchors.leftMargin: 24
        anchors.topMargin: 16

        Image {
          id: image
          x: 305
          y: 164
          anchors.fill: parent

          source: "qrc:/icons/training_page/training_page_bg.svg"
          fillMode: Image.Stretch

        }

        Rectangle {
          id: rectangle
          width: 196
          height: 54
          color: "#181818"
          radius: 16
          border.width: 0
          anchors.top: parent.top
          anchors.topMargin: 16
          anchors.horizontalCenter: parent.horizontalCenter

          Text {
            id: current_speed
            color: "#ffffff"
            text: qsTr("42 km/h")
            anchors.fill: parent
            font.pixelSize: 32
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.HorizontalFit
            font.weight: Font.DemiBold
            anchors.rightMargin: 16
            anchors.leftMargin: 16
            anchors.bottomMargin: 8
            anchors.topMargin: 8
          }
        }

        Text {
          id: current_loop
          opacity: 0.5
          color: "#181818"
          text: qsTr("Current loop")
          anchors.top: rectangle.bottom
          font.pixelSize: 32
          horizontalAlignment: Text.AlignHCenter
          verticalAlignment: Text.AlignVCenter
          font.weight: Font.DemiBold
          font.italic: true
          font.capitalization: Font.AllUppercase
          anchors.topMargin: 32
          anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
          id: time_current_loop
          color: "#181818"
          text: qsTr("00:42:15")
          anchors.top: current_loop.bottom
          font.pixelSize: 64
          horizontalAlignment: Text.AlignHCenter
          verticalAlignment: Text.AlignVCenter
          font.weight: Font.DemiBold
          font.italic: true
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.topMargin: 0
        }

        Text {
          id: last_loop
          opacity: 0.5
          color: "#181818"
          text: qsTr("Last loop")
          anchors.top: time_current_loop.bottom
          font.pixelSize: 24
          horizontalAlignment: Text.AlignHCenter
          verticalAlignment: Text.AlignVCenter
          font.italic: false
          anchors.topMargin: 24
          anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
          id: time_last_loop
          color: "#181818"
          text: qsTr("00:44:02")
          anchors.top: last_loop.bottom
          font.pixelSize: 24
          horizontalAlignment: Text.AlignHCenter
          verticalAlignment: Text.AlignVCenter
          anchors.horizontalCenterOffset: 0
          font.weight: Font.DemiBold
          anchors.topMargin: 0
          anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
          id: text1
          opacity: 0.5
          color: "#181818"
          text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\n</style></head><body style=\" font-family:'Cantarell'; font-size:12pt; font-weight:500; font-style:normal;\">\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:24pt; color:#181818;\">Press</span></p>\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:24pt; color:#181818;\">console</span></p>\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:24pt; color:#181818;\">button</span></p>\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:24pt; color:#181818;\">to finish</span></p></body></html>"
          anchors.top: time_last_loop.bottom
          font.pixelSize: 24
          horizontalAlignment: Text.AlignHCenter
          verticalAlignment: Text.AlignVCenter
          lineHeight: 0.8
          textFormat: Text.RichText
          font.bold: false
          anchors.topMargin: 12
          anchors.horizontalCenter: parent.horizontalCenter
        }

      }

      Item {
        id: raceControlItem
        x: 0
        y: 0
        height: 32
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.rightMargin: 24
        anchors.leftMargin: 24

        Button {
          id: raceControlButton
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
              id: raceControlIcon
              width: 32
              height: 32
              anchors.verticalCenter: parent.verticalCenter
              anchors.left: parent.left
              source: "qrc:/icons/home_page/chain.svg"
              anchors.leftMargin: 0
              fillMode: Image.PreserveAspectFit
            }

            Text {
              id: raceControlText
              color: "#ffffff"
              text: qsTr("Race control server connected")
              anchors.verticalCenter: parent.verticalCenter
              anchors.left: raceControlIcon.right
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
    }

    Item {
      id: historyTab
      Layout.fillHeight: true
      Layout.fillWidth: true

      TableView {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: rectangle1.bottom
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        property var columnWidths: [120, 180, 80, 150]
        columnWidthProvider: function (column) { return columnWidths[column] }

        ScrollBar.vertical: ScrollBar {
          policy: ScrollBar.AsNeeded
        }

        model: TableModel {
          TableModelColumn { display: "time" }
          TableModelColumn { display: "name" }
          TableModelColumn { display: "stage" }
          TableModelColumn { display: "group" }

          rows: [
            {
              time: "00:41:01",
              name: "Buggy 10 2WD",
              stage: "Qual 2",
              group: "Group C"
            },
            {
              time: "00:41:01",
              name: "SC10",
              stage: "Qual 3",
              group: "Group A"
             },
             {
              time: "00:41:01",
              name: "Buggy 10 2WD",
              stage: "Qual 2",
              group: "Group C"
             },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            },
            {
             time: "00:41:01",
             name: "Buggy 10 2WD",
             stage: "Qual 2",
             group: "Group C"
            }
          ]
        }
        delegate: Text {
          text: model.display
          verticalAlignment: Text.AlignVCenter
          font.styleName: "Medium"
          font.family: "Rubik"
          padding: 12
          color: "white"

          Rectangle {
            anchors.fill: parent
            color: "#181818"
            radius: 0
            border.width: 0
            clip: true
            z: -1
          }
        }
      }

      Rectangle {
        id: rectangle1
        height: 80
        color: "#000000"
        border.width: 0
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.leftMargin: 0
        anchors.rightMargin: 0

        Button {
          id: nextHistoryButton
          width: 48
          height: 48
          anchors.verticalCenter: parent.verticalCenter
          anchors.right: parent.right
          anchors.rightMargin: 32
          icon.color: "#97ec49"
          icon.height: 48
          icon.width: 48
          icon.source: "qrc:/icons/training_page/next_history.svg"
          display: AbstractButton.IconOnly
          flat: true
        }

        Button {
          id: prevHistoryButton
          width: 48
          height: 48
          anchors.verticalCenter: parent.verticalCenter
          anchors.right: nextHistoryButton.left
          anchors.rightMargin: 24
          icon.color: "#97ec49"
          icon.height: 48
          icon.width: 48
          icon.source: "qrc:/icons/training_page/prev_history.svg"
          display: AbstractButton.IconOnly
          flat: true
        }

        Text {
          id: dateHistoryText
          color: "#ffffff"
          text: qsTr("24 June 2023")
          anchors.verticalCenter: parent.verticalCenter
          anchors.left: parent.left
          font.letterSpacing: 1.5
          font.pixelSize: 16
          font.weight: Font.Bold
          styleColor: "#ffffff"
          font.capitalization: Font.AllUppercase
          anchors.leftMargin: 12
        }
      }
    }
  }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:800;width:480}D{i:22}D{i:20}
}
##^##*/
