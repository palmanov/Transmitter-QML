import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.11

Window {
  id: window
  width: 480
  height: 800
  visible: true
  minimumHeight: 800
  minimumWidth: 480
  title: qsTr("Transmitter")

  Rectangle {
    opacity: 1.0
    color: "#181818"
    anchors.fill: parent
  }

  StackLayout {
    id: stackWidget

    currentIndex: 0

    anchors.rightMargin: 0
    anchors.leftMargin: 0
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.topMargin: 72
    anchors.bottomMargin: 0

    Loader {
      id: homePage
      source: "qrc:/pages/home_page.qml"
    }

    Loader {
      id: trainingPage
      source: "qrc:/pages/training_page.qml"
    }
  }

  Loader {
    id: bottomMenu
    source: "qrc:/bottom_menu.qml"

    anchors.rightMargin: 0
    anchors.leftMargin: 0
    anchors.bottomMargin: 0
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
  }

  Connections {
    target: bottomMenu.item
    function onMessage(msg) {
      stackWidget.currentIndex = msg
      bottomMenu.item.currentPageIndex = msg
    }
  }

  Connections {
    target: homePage.item
    function onTransitionToTraining() {
      stackWidget.currentIndex = 1
      bottomMenu.item.currentPageIndex = 1
    }
  }

  Connections {
    target: homePage.item
    function onTransitionToSettings() {
      stackWidget.currentIndex = 5
      bottomMenu.item.currentPageIndex = 5
    }
  }

  Loader {
    id: statusBar
    source: "qrc:/status_bar.qml"
    anchors.rightMargin: 16
    anchors.leftMargin: 16
    anchors.topMargin: 16
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
  }
}
