import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
  id: settingsPage

  Item {
    id: deadBandItem
    height: 44
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.rightMargin: 16
    anchors.leftMargin: 16
    anchors.topMargin: 24

    Slider {
      id: control
      anchors.left: text1.right
      anchors.right: text2.left
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      anchors.rightMargin: 0
      anchors.leftMargin: 0
      value: 4
      from: 0
      to: 12
      stepSize: 1

      background: Rectangle {
        id: rectangle
        x: control.leftPadding
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: 200
        implicitHeight: 52
        width: control.availableWidth
        height: implicitHeight
        opacity: 1
        radius: 100
        color: "#060606"

        Text {
          id: deadBandBgText
          color: "#ffffff"
          font.pixelSize: 24
          horizontalAlignment: Text.AlignLeft
          verticalAlignment: Text.AlignVCenter
          anchors.leftMargin: 16
          font.capitalization: Font.AllUppercase
          font.family: "Rubik"
          font.styleName: "Bold"
          text: qsTr("Deadband")
          anchors.fill: parent
          font.letterSpacing: 1
        }
      }

      handle: Rectangle {
        x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: 58
        implicitHeight: 35
        radius: 100
        color: control.pressed ? "#9747FF" : "#9747FF"
        border.color: "#9747FF"

        Text {
          id: deadBandText
          color: "#ffffff"
          anchors.fill: parent
          font.pixelSize: 16
          horizontalAlignment: Text.AlignHCenter
          verticalAlignment: Text.AlignVCenter
          font.family: "Rubik"
          font.styleName: "Bold"
          text: control.value
        }
      }
    }

    Text {
      id: text1
      width: 40
      color: "#ffffff"
      text: qsTr("0")
      anchors.left: parent.left
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      font.letterSpacing: 1
      font.pixelSize: 16
      horizontalAlignment: Text.AlignRight
      verticalAlignment: Text.AlignVCenter
      font.styleName: "Bold"
      font.family: "Rubik"
      anchors.leftMargin: 0
      anchors.topMargin: 0
      anchors.bottomMargin: 0
    }

    Text {
      id: text2
      width: 40
      color: "#ffffff"
      text: qsTr("12")
      anchors.right: parent.right
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      font.letterSpacing: 1
      font.pixelSize: 16
      verticalAlignment: Text.AlignVCenter
      font.styleName: "Bold"
      font.family: "Rubik"
      anchors.rightMargin: 0
      anchors.topMargin: 0
      anchors.bottomMargin: 0
    }
  }

  Item {
    id: curveItem
    height: 44
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: deadBandItem.bottom
    anchors.rightMargin: 16
    anchors.leftMargin: 16
    anchors.topMargin: 16
    Slider {
      id: curveControl
      anchors.left: text3.right
      anchors.right: text4.left
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      anchors.leftMargin: 0
      value: 0
      stepSize: 1
      to: 20
      from: -20

      anchors.rightMargin: 0
      handle: Rectangle {
        x: curveControl.leftPadding + curveControl.visualPosition * (curveControl.availableWidth - width)
        y: curveControl.topPadding + curveControl.availableHeight / 2 - height / 2
        color: curveControl.pressed ? "#339E01" : "#339E01"
        radius: 100
        border.color: "#339E01"
        implicitHeight: 35
        Text {
          id: curveItemText
          color: "#ffffff"
          text: curveControl.value
          anchors.fill: parent
          font.pixelSize: 16
          horizontalAlignment: Text.AlignHCenter
          verticalAlignment: Text.AlignVCenter
          font.family: "Rubik"
          font.styleName: "Bold"
        }
        implicitWidth: 58
      }
      background: Rectangle {
        id: rectangle1
        x: curveControl.leftPadding
        y: curveControl.topPadding + curveControl.availableHeight / 2 - height / 2
        width: curveControl.availableWidth
        height: implicitHeight
        opacity: 1
        color: "#060606"
        radius: 100
        implicitHeight: 52

        Text {
          id: curveBgText
          color: "#ffffff"
          text: qsTr("Curve")
          anchors.fill: parent
          font.letterSpacing: 1
          font.pixelSize: 24
          horizontalAlignment: Text.AlignLeft
          verticalAlignment: Text.AlignVCenter
          anchors.leftMargin: 16
          font.styleName: "Bold"
          font.family: "Rubik"
          font.capitalization: Font.AllUppercase
        }
        implicitWidth: 200
      }
    }

    Text {
      id: text3
      width: 40
      color: "#ffffff"
      text: qsTr("-20")
      anchors.left: parent.left
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      font.letterSpacing: 1
      font.pixelSize: 16
      horizontalAlignment: Text.AlignRight
      verticalAlignment: Text.AlignVCenter
      anchors.leftMargin: 0
      font.styleName: "Bold"
      font.family: "Rubik"
      anchors.topMargin: 0
      anchors.bottomMargin: 0
    }

    Text {
      id: text4
      width: 40
      color: "#ffffff"
      text: qsTr("20")
      anchors.right: parent.right
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      font.letterSpacing: 1
      font.pixelSize: 16
      verticalAlignment: Text.AlignVCenter
      font.styleName: "Bold"
      anchors.rightMargin: 0
      font.family: "Rubik"
      anchors.topMargin: 0
      anchors.bottomMargin: 0
    }
  }

  Item {
    id: trimmerItem
    height: 44
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: curveItem.bottom
    anchors.leftMargin: 16
    anchors.topMargin: 16
    anchors.rightMargin: 16
    Slider {
      id: trimmerControl
      anchors.left: text5.right
      anchors.right: text6.left
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      anchors.leftMargin: 0
      value: 81
      stepSize: 1
      to: 100
      from: 40
      anchors.rightMargin: 0
      handle: Rectangle {
        x: trimmerControl.leftPadding + trimmerControl.visualPosition * (trimmerControl.availableWidth - width)
        y: trimmerControl.topPadding + trimmerControl.availableHeight / 2 - height / 2
        color: trimmerControl.pressed ? "#D7761E" : "#D7761E"
        radius: 100
        border.color: "#D7761E"
        implicitHeight: 35
        Text {
          id: trimmerItemText
          color: "#ffffff"
          text: trimmerControl.value
          anchors.fill: parent
          font.pixelSize: 16
          horizontalAlignment: Text.AlignHCenter
          verticalAlignment: Text.AlignVCenter
          font.family: "Rubik"
          font.styleName: "Bold"
        }
        implicitWidth: 58
      }
      background: Rectangle {
        id: rectangle2
        x: trimmerControl.leftPadding
        y: trimmerControl.topPadding + trimmerControl.availableHeight / 2 - height / 2
        width: trimmerControl.availableWidth
        height: implicitHeight
        opacity: 1
        color: "#060606"
        radius: 100
        implicitHeight: 52
        Text {
          id: trimmerBgText
          color: "#ffffff"
          text: qsTr("Trimmer")
          anchors.fill: parent
          font.letterSpacing: 1
          font.pixelSize: 24
          horizontalAlignment: Text.AlignLeft
          verticalAlignment: Text.AlignVCenter
          anchors.leftMargin: 16
          font.styleName: "Bold"
          font.family: "Rubik"
          font.capitalization: Font.AllUppercase
        }
        implicitWidth: 200
      }
    }

    Text {
      id: text5
      width: 40
      color: "#ffffff"
      text: qsTr("40")
      anchors.left: parent.left
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      font.letterSpacing: 1
      font.pixelSize: 16
      horizontalAlignment: Text.AlignRight
      verticalAlignment: Text.AlignVCenter
      anchors.leftMargin: 0
      font.styleName: "Bold"
      font.family: "Rubik"
      anchors.topMargin: 0
      anchors.bottomMargin: 0
    }

    Text {
      id: text6
      width: 40
      color: "#ffffff"
      text: qsTr("100")
      anchors.right: parent.right
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      font.letterSpacing: 1
      font.pixelSize: 16
      verticalAlignment: Text.AlignVCenter
      font.styleName: "Bold"
      anchors.rightMargin: 0
      font.family: "Rubik"
      anchors.topMargin: 0
      anchors.bottomMargin: 0
    }
  }

  Item {
    id: reverseItem
    width: 180
    height: 40
    anchors.left: parent.left
    anchors.top: trimmerItem.bottom
    anchors.leftMargin: 80
    anchors.topMargin: 24

    Switch {
      id: reverseSwitch
      width: 64
      anchors.left: parent.left
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      anchors.topMargin: 0
      anchors.bottomMargin: 0
      anchors.leftMargin: 0
      checked: true

      indicator: Rectangle {
        id: rectangle3
        implicitWidth: 64
        implicitHeight: 40
        x: reverseSwitch.width - width - reverseSwitch.rightPadding
        y: parent.height / 2 - height / 2
        radius: 100
        color: reverseSwitch.checked ? "#D9D9D9" : "#D9D9D9"
        border.color: reverseSwitch.checked ? "#D9D9D9" : "#D9D9D9"

        Rectangle {
          width: 24
          radius: 13
          border.color: "#339e01"
          x: reverseSwitch.checked ? parent.width - width - 8 : 8
          color: reverseSwitch.checked ? "#339E01" : "transparent"
          anchors.top: parent.top
          anchors.bottom: parent.bottom
          anchors.topMargin: 8
          anchors.bottomMargin: 8
        }
      }

      background: Rectangle {
        implicitWidth: 64
        implicitHeight: 40
        opacity: 0.0
      }
    }

    Text {
      id: reverseLabel
      color: "#ffffff"
      text: qsTr("Reverse")
      anchors.left: reverseSwitch.right
      anchors.right: parent.right
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      font.letterSpacing: 1
      font.pixelSize: 16
      verticalAlignment: Text.AlignVCenter
      font.capitalization: Font.AllUppercase
      font.styleName: "Bold"
      font.family: "Rubik"
      anchors.topMargin: 0
      anchors.bottomMargin: 0
      anchors.rightMargin: 0
      anchors.leftMargin: 8
    }
  }

  Button {
    id: resetButton
    contentItem: Text {
      text: qsTr("Reset")
      font.pixelSize: 16
      color: "#D04216"
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter
      font.styleName: "Bold"
      font.family: "Rubik"
      elide: Text.ElideRight
      font.letterSpacing: 1
    }

    anchors.right: parent.right
    anchors.top: trimmerItem.bottom
    font.letterSpacing: 1
    font.pixelSize: 16
    anchors.topMargin: 24
    anchors.rightMargin: 64
    font.weight: Font.Medium
    font.family: "Rubik"
    display: AbstractButton.TextOnly
    flat: true
  }

  Rectangle {
    id: plotRectangle
    height: 422
    color: "#121212"
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    anchors.rightMargin: 0
    anchors.leftMargin: 0
    anchors.bottomMargin: 0

    Image {
      id: image
      anchors.fill: parent
      source: "qrc:/icons/settings_page/graph.png"
      anchors.topMargin: 12
      anchors.rightMargin: 24
      anchors.leftMargin: 24
      anchors.bottomMargin: 96
      fillMode: Image.Stretch
    }
  }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:800;width:480}D{i:8;locked:true}D{i:1;locked:true}D{i:9;locked:true}
D{i:34}D{i:33}
}
##^##*/
