// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle{id: justRect
    height: 30
    width:mainWin.width
    border.color: "black"
    border.width: 2
    color: "Blue"
    opacity: 0
    Text
    {
        anchors.centerIn: parent
        font.bold: true
        font.pixelSize: parent.height-4
        color: "White"
        text:"Feeds edit page"
    }
}
