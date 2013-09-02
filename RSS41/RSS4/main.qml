// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import Qt 4.7

Rectangle {
    id: mainWin
    width: 800
    height: 500
    color: "Azure"
    radius: 5
    visible: true
    property string currentFeed: ""
    property bool loading: feedModel.status == XmlListModel.Loading

    FeedModel{
        id: feedModel
    }

    TreeView{
        id: treeView
    }

    RssNews{id:rssNews
            x: treeView.width
            y: 0
    }


    ButtonAdd{id: buttonAdd
        anchors.left: parent.bottom
        y: treeView.height+5

    }

    ButtonReturn{id: buttonReturn
        anchors.left: parent.bottom
        y: 450

    }

    AddRow{id: addRow
        x: 20
        y: mainWin.height/4

    }

    DeleteRow{id: deleteRow
        x: 20
        y:  mainWin.height/2

    }

    AddcategoryRow{id: addcategoryRow
        x: 20
        y:  mainWin.height/2+mainWin.height/5

    }

    DeleteCategoryRow{id: delcategoryRow
        x: 20
        y:  mainWin.height/2+mainWin.height/3

    }

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

    states: [
        State {
            name: "StateMainWinow"
            PropertyChanges {
                target: mainWin
                width: 800
                height: 500
            }

            PropertyChanges {
                target: treeView
                opacity: 1
            }

            PropertyChanges {
                target: rssNews
                opacity: 1

            }

            PropertyChanges {
                target: buttonAdd
                opacity: 1

            }

            PropertyChanges {
                target: buttonReturn
                opacity: 0

            }

        },
        State {
            name: "StateAddFeed"
            PropertyChanges {
                target: mainWin
                width: 800
                height: 500
            }

            PropertyChanges {
                target: treeView
                opacity: 0
            }

            PropertyChanges {
                target: rssNews
                opacity: 0

            }

            PropertyChanges {
                target: buttonAdd
                opacity: 0

            }

            PropertyChanges {
                target: buttonReturn
                opacity: 1

            }

            PropertyChanges{
                target: addRow
                opacity: 1
            }

            PropertyChanges{
                target: deleteRow
                opacity: 1
            }

            PropertyChanges{
                target: justRect
                opacity: 1
            }
            PropertyChanges{
                target: addcategoryRow
                opacity: 1
            }
            PropertyChanges{
                target: delcategoryRow
                opacity: 1
            }
        }


    ]

}



