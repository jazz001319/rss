// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    anchors.left: parent.bottom
    width: 150
    height: 50
    opacity: 0
    color: "#6d5e5e"
    gradient: Gradient {
        GradientStop {
            position: 0.00;
            color: "#6d5e5e";
        }
        GradientStop {
            position: 1.00;
            color: "#ffffff";
        }
    }
    border.width: 3
    border.color: "#a3a3b3"
    Text {
        id: buttonReturnLabel
        text: "Return to news"
        anchors.centerIn: parent;
    }
    MouseArea {
        id: buttonReturnmouseArea
        x: 0
        y: 0
        width: 100
        height: 30
        anchors.fill: parent
        onClicked:
        {
            if (mouse.button === Qt.LeftButton)
                mainWin.state = "StateMainWinow"
        }
    }
}
