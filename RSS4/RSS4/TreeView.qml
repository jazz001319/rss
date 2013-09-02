// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

ListView {
    width: 200
    height: 400
    ScrollBar {
        scrollArea: treeView; height: treeView.height; width: 8
        anchors.right: treeView.right
    }
    //Задаем делегата
    delegate: treeDelegate
    //Задаем модель, этот объект позже придет из C++
    model: treeModel
    //Компонент делегата
    TreeDelegate{
        id: treeDelegate
    }

    ButtonExit{id: buttonExit
            y: treeView.height+10+(mainWin.height-(treeView.height+10))/2
            z: 2
    }
}
