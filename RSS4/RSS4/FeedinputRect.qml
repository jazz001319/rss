// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
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
