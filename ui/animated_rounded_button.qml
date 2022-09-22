import QtQuick 2.15
import QtQuick.Controls 2.15

RoundButton {
    id: animatedRoundButton
    width: 48
    height: 48
    state: "active"
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
