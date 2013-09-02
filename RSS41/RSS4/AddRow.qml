// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Row{
    height: 30
    spacing: 20
    opacity: 0
    Text
    {
        text: "Add Feed: "
    }
    Rectangle {
        id: feedinputRect //Имя строки ввода
        width: 250
        height: 30

        border.color: "black"
        border.width: 2

        //цвет строки ввода
        color: "white"

        TextInput {
            id: feedinput
            objectName: "feedinput"
            color: "black";
            selectionColor: "blue"
            font.pixelSize: 12;
            width: parent.width-4
            anchors.centerIn: parent
            focus: true
            text:""
        }
    }
    Text
    {
        text: "Name: "
    }
    Rectangle {
        id: feedNameinputRect //Имя строки ввода
        width: 80
        height: 30

        border.color: "black"
        border.width: 2

        //цвет строки ввода
        color: "white"

        TextInput {
            id: feedNameinput
            objectName: "feedNameinput"
            color: "black";
            selectionColor: "blue"
            font.pixelSize: 12;
            width: parent.width-4
            anchors.centerIn: parent
            focus: true
            text:""
        }
    }

    Text
    {
        text: "To Category "
    }
    Rectangle {
        id: feedCategoryinputRect //Имя строки ввода
        width: 80
        height: 30

        border.color: "black"
        border.width: 2

        //цвет строки ввода
        color: "white"

        TextInput {
            id: feedCategoryinput
            objectName: "feedCategoryinput"
            color: "black";
            selectionColor: "blue"
            font.pixelSize: 12;
            width: parent.width-4
            anchors.centerIn: parent
            focus: true
            text:""
        }
    }
    Rectangle{
        id: addOk
        width: 90
        height: parent.height
        color: buttonOkmouseArea.pressed ? "#d40000" : "#6d5e5e"
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: buttonOkmouseArea.pressed ? "#d40000" : "#6d5e5e"
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
            text: "Ok"
            anchors.centerIn: parent;
        }
        MouseArea {
            id: buttonOkmouseArea
            anchors.fill: parent
            onClicked:
            {
                 if (mouse.button === Qt.LeftButton)
                     window.addFeed();
            }
        }
    }
}
