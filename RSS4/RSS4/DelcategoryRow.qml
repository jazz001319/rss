// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Row{
    height: 30
    width: delcategoryRow.width
    spacing: 20
    opacity: 0
    Text
    {
        text: "Delete Category "
    }
    Rectangle {
        id: nameinputRect2 //Имя строки ввода
        width: 350
        height: 30

        border.color: "black"
        border.width: 2

        //цвет строки ввода
        color: "white"

        TextInput {
            id: nameinput2
            objectName: "nameinput2"
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
        id: delcatOk
        width: 90
        height: parent.height
        color: deleteOkmouseArea.pressed ? "#d40000" : "#6d5e5e"
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: deleteOkmouseArea.pressed ? "#d40000" : "#6d5e5e"
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
            id: delcategmouseArea
            anchors.fill: parent
            onClicked:
            {
                if (mouse.button === Qt.LeftButton)
                {
                    window.deleteCategory();
                }
            }
        }
    }
}
