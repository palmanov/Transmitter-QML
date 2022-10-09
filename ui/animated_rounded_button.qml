import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
  id: animatedRoundButton
  width: 48
  height: 48
  state: "active"
  background: Rectangle {
    id: buttonBackground
    implicitWidth: animatedRoundButton.width
    implicitHeight: animatedRoundButton.height
    opacity: 1.0
    color: "white"
    anchors.fill: parent
    radius: 16
  }

  states: [
    State {
      name: "active"
      PropertyChanges { target: buttonBackground; opacity: 1.0 }
    },
    State {
      name: "noactive"
      PropertyChanges { target: buttonBackground; opacity: 0.0 }
    }
  ]

//    transitions: Transition {
//        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
//    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}
}
##^##*/
