// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    anchors.left: parent.bottom
    width: treeView.width
    height: (mainWin.height-(treeView.height+10))/2
    color:  buttonExitmouseArea ? "#d40000" : "#6d5e5e"
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
        id: buttonExitText
        text: "Exit"
        anchors.centerIn: parent;
    }
    MouseArea {
        id: buttonExitmouseArea
        anchors.fill: parent
        onClicked: {treeModel.quite();}

    }
}
