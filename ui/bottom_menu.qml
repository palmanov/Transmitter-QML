import QtQuick 2.15
import QtQuick.Controls 1.4
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11

Item {
  id: bottomMenuItem
  width: 480
  height: 80

  property int currentPageIndex

  // Background
  Rectangle {
    id: bottomMenuBg
    opacity: 0.75
    color: "#000000"
    radius: 100
    anchors.fill: parent
  }

  signal message(int msg)

  Connections {
    target: bottomMenuItem
    function onCurrentPageIndexChanged() {
      switch (currentPageIndex) {
      case 0:
        homeButton.checked = true
        break
      case 1:
        trainingButton.checked = true
        break
      case 2:
        unknownButton.checked = true
        break
      case 3:
        bonesButton.checked = true
        break
      case 4:
        bicycleButton.checked = true
        break
      case 5:
        settingsButton.checked = true
        break
      }
    }
  }

  RowLayout {
    id: bottomMenuLayout
    anchors.verticalCenter: parent.verticalCenter
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    layoutDirection: Qt.LeftToRight
    anchors.rightMargin: 24
    anchors.leftMargin: 24

    Button {
      id: homeButton
      width: 48
      height: 48

      checkable: true
      checked: true
      autoExclusive: true

      icon.height: 40
      icon.width: 40
      icon.source: "qrc:/icons/bottom_menu/home.svg"

      Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

      background: Rectangle {
        id: homeButtonBg
        width: parent.width
        height: parent.height
        opacity: 1.0
        color: "white"
        anchors.fill: parent
        radius: 16
      }

      onClicked: bottomMenuItem.message(0)

      state: "active"
      states: [
        State {
          name: "active"; when: homeButton.checked
          PropertyChanges { target: homeButtonBg; opacity: 1.0 }
          PropertyChanges { target: homeButton; icon.color: "#181818" }
        },
        State {
          name: "noactive"; when: !homeButton.checked
          PropertyChanges { target: homeButtonBg; opacity: 0.0 }
          PropertyChanges { target: homeButton; icon.color: "#97EC49" }
        }
      ]
      transitions: Transition {
        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
      }
    }

    Button {
      id: trainingButton
      width: 48
      height: 48

      checkable: true
      autoExclusive: true

      icon.height: 40
      icon.width: 40
      icon.source: "qrc:/icons/bottom_menu/training.svg"

      Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

      background: Rectangle {
        id: trainingButtonBg
        implicitWidth: trainingButton.width
        implicitHeight: trainingButton.height
        opacity: 1.0
        color: "white"
        anchors.fill: parent
        radius: 16
      }

      onClicked: bottomMenuItem.message(1)

      state: "noactive"
      states: [
        State {
          name: "active"; when: trainingButton.checked
          PropertyChanges { target: trainingButtonBg; opacity: 1.0 }
          PropertyChanges { target: trainingButton; icon.color: "#181818" }
        },
        State {
          name: "noactive"; when: !trainingButton.checked
          PropertyChanges { target: trainingButtonBg; opacity: 0.0 }
          PropertyChanges { target: trainingButton; icon.color: "#97EC49" }
        }
      ]
      transitions: Transition {
        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
      }
    }

    Button {
      id: unknownButton
      width: 48
      height: 48

      checkable: true
      autoExclusive: true

      icon.height: 36
      icon.width: 36
      icon.source: "qrc:/icons/bottom_menu/unknown.svg"

      Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

      background: Rectangle {
        id: unknownButtonBg
        implicitWidth: unknownButton.width
        implicitHeight: unknownButton.height
        opacity: 1.0
        color: "white"
        anchors.fill: parent
        radius: 16
      }

      state: "noactive"
      states: [
        State {
          name: "active"; when: unknownButton.checked
          PropertyChanges { target: unknownButtonBg; opacity: 1.0 }
          PropertyChanges { target: unknownButton; icon.color: "#181818" }
        },
        State {
          name: "noactive"; when: !unknownButton.checked
          PropertyChanges { target: unknownButtonBg; opacity: 0.0 }
          PropertyChanges { target: unknownButton; icon.color: "#97EC49" }
        }
      ]
      transitions: Transition {
        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
      }
    }

    Button {
      id: bonesButton
      width: 48
      height: 48

      checkable: true
      autoExclusive: true

      icon.height: 36
      icon.width: 36
      icon.source: "qrc:/icons/bottom_menu/bones.svg"

      Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

      background: Rectangle {
        id: bonesButtonBg
        implicitWidth: bonesButton.width
        implicitHeight: bonesButton.height
        opacity: 1.0
        color: "white"
        anchors.fill: parent
        radius: 16
      }

      state: "noactive"
      states: [
        State {
          name: "active"; when: bonesButton.checked
          PropertyChanges { target: bonesButtonBg; opacity: 1.0 }
          PropertyChanges { target: bonesButton; icon.color: "#181818" }
        },
        State {
          name: "noactive"; when: !bonesButton.checked
          PropertyChanges { target: bonesButtonBg; opacity: 0.0 }
          PropertyChanges { target: bonesButton; icon.color: "#97EC49" }
        }
      ]
      transitions: Transition {
        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
      }
    }

    Button {
      id: bicycleButton
      width: 48
      height: 48

      checkable: true
      autoExclusive: true

      icon.height: 36
      icon.width: 36
      icon.source: "qrc:/icons/bottom_menu/bicycle.svg"

      Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

      background: Rectangle {
        id: bicycleButtonBg
        implicitWidth: bicycleButton.width
        implicitHeight: bicycleButton.height
        opacity: 1.0
        color: "white"
        anchors.fill: parent
        radius: 16
      }

      state: "noactive"
      states: [
        State {
          name: "active"; when: bicycleButton.checked
          PropertyChanges { target: bicycleButtonBg; opacity: 1.0 }
          PropertyChanges { target: bicycleButton; icon.color: "#181818" }
        },
        State {
          name: "noactive"; when: !bicycleButton.checked
          PropertyChanges { target: bicycleButtonBg; opacity: 0.0 }
          PropertyChanges { target: bicycleButton; icon.color: "#97EC49" }
        }
      ]
      transitions: Transition {
        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
      }
    }

    Button {
      id: settingsButton
      width: 48
      height: 48

      checkable: true
      autoExclusive: true

      icon.height: 36
      icon.width: 36
      icon.source: "qrc:/icons/bottom_menu/settings.svg"

      Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

      background: Rectangle {
        id: settingsButtonBg
        implicitWidth: settingsButton.width
        implicitHeight: settingsButton.height
        opacity: 1.0
        color: "white"
        anchors.fill: parent
        radius: 16
      }

      state: "noactive"
      states: [
        State {
          name: "active"; when: settingsButton.checked
          PropertyChanges { target: settingsButtonBg; opacity: 1.0 }
          PropertyChanges { target: settingsButton; icon.color: "#181818" }
        },
        State {
          name: "noactive"; when: !settingsButton.checked
          PropertyChanges { target: settingsButtonBg; opacity: 0.0 }
          PropertyChanges { target: settingsButton; icon.color: "#97EC49" }
        }
      ]

      transitions: Transition {
        NumberAnimation { properties: "opacity"; easing.type: Easing.Linear }
      }
    }
  }
}



