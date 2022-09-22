import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11

Item {
    width: 480
    height: 80

    Rectangle {
        id: bottom_menu
        opacity: 0.75
        color: "#000000"
        radius: 100
        anchors.fill: parent

        RowLayout {
          id: rowLayout
          anchors.verticalCenter: parent.verticalCenter
          anchors.left: parent.left
          anchors.right: parent.right
          anchors.top: parent.top
          layoutDirection: Qt.LeftToRight
          anchors.rightMargin: 24
          anchors.leftMargin: 24

//            AnimatedRoundButton {
//                id: roundButton
//                width: 48
//                height: 48
//                radius: 16
//                state: "active"
//                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
//            }

//            AnimatedRoundButton {
//                id: roundButton1
//                width: 48
//                height: 48
//                radius: 16
//                state: "non active"
//                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
//            }

//            AnimatedRoundButton {
//                id: roundButton2
//                width: 48
//                height: 48
//                radius: 16
//                text: "+"
//                state: "non active"
//                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
//            }

//            AnimatedRoundButton {
//                id: roundButton3
//                width: 48
//                height: 48
//                radius: 16
//                state: "non active"
//                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
//            }

            RoundButton {
              id: animatedRoundButton
              width: 48
              height: 48
              state: "active"
              Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
              background: Rectangle {
                id: buttonBackground
                opacity: 1.0
                color: "white"
                anchors.fill: parent
                radius: 16
              }

            //    states: [
            //        State {
            //            name: "non active"; when: !animatedRoundButton.checked
            //            PropertyChanges { target: buttonBackground; opacity: 0.0 }
            //        },
            //        State {
            //            id: state1
            //            name: "active"; when: animatedRoundButton.checked
            //            PropertyChanges { target: buttonBackground; opacity: 1.0 }
            //        }
            //    ]

            //    transitions: Transition {
            //        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
            //    }
            }

            RoundButton {
              id: animatedRoundButton2
              width: 48
              height: 48
              state: "active"
              Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
              background: Rectangle {
                id: buttonBackground2
                opacity: 1.0
                color: "white"
                anchors.fill: parent
                radius: 16
              }

            //    states: [
            //        State {
            //            name: "non active"; when: !animatedRoundButton.checked
            //            PropertyChanges { target: buttonBackground; opacity: 0.0 }
            //        },
            //        State {
            //            id: state1
            //            name: "active"; when: animatedRoundButton.checked
            //            PropertyChanges { target: buttonBackground; opacity: 1.0 }
            //        }
            //    ]

            //    transitions: Transition {
            //        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
            //    }
            }

            RoundButton {
                id: animatedRoundButton3
                width: 48
                height: 48
                state: "active"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                background: Rectangle {
                    id: buttonBackground3
                    opacity: 1.0
                    color: "white"
                    anchors.fill: parent
                    radius: 16
                }

            //    states: [
            //        State {
            //            name: "non active"; when: !animatedRoundButton.checked
            //            PropertyChanges { target: buttonBackground; opacity: 0.0 }
            //        },
            //        State {
            //            id: state1
            //            name: "active"; when: animatedRoundButton.checked
            //            PropertyChanges { target: buttonBackground; opacity: 1.0 }
            //        }
            //    ]

            //    transitions: Transition {
            //        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
            //    }
            }

            RoundButton {
                id: animatedRoundButton4
                width: 48
                height: 48
                state: "active"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                background: Rectangle {
                    id: buttonBackground4
                    opacity: 1.0
                    color: "white"
                    anchors.fill: parent
                    radius: 16
                }

            //    states: [
            //        State {
            //            name: "non active"; when: !animatedRoundButton.checked
            //            PropertyChanges { target: buttonBackground; opacity: 0.0 }
            //        },
            //        State {
            //            id: state1
            //            name: "active"; when: animatedRoundButton.checked
            //            PropertyChanges { target: buttonBackground; opacity: 1.0 }
            //        }
            //    ]

            //    transitions: Transition {
            //        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
            //    }
            }

            RoundButton {
              id: animatedRoundButton5
              width: 48
              height: 48
              state: "active"
              Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
              background: Rectangle {
                id: buttonBackground5
                opacity: 1.0
                color: "white"
                anchors.fill: parent
                radius: 16
              }
              states: [
                State {
                  name: "non active"
                  PropertyChanges {
                    target: buttonBackground5
                    opacity: 0.0
                  }
                },
                State {
                  name: "active"
                  PropertyChanges {
                    target: buttonBackground5
                    opacity: 1.0
                  }
                }
              ]
              transitions: Transition {
                NumberAnimation {
                  properties: "opacity"
                  easing.type: Easing.Linear
                  duration: 100
                }
              }
            }
        }
    }
}


/*##^##
Designer {
    D{i:0;formeditorZoom:4}
}
##^##*/
