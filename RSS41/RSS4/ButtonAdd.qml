// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    width: treeView.width
    height: (mainWin.height-(treeView.height+10))/2
    color: buttonAddmouseArea.pressed ? "#d40000" : "#6d5e5e"
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
    z: 2
    border.width: 3
    border.color: "#a3a3b3"
    Text {
        id: buttonAddLabel
        text: "Edit feeds"
        anchors.centerIn: parent;
    }
    MouseArea {
        id: buttonAddmouseArea
        anchors.fill: parent
        onClicked:
        {
            if (mouse.button === Qt.LeftButton)
                mainWin.state = "StateAddFeed"
        }
    }
}
