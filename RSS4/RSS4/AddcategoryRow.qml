// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Row{
    height: 30
    width: addcategoryRow.width
    spacing: 20
    opacity: 0
    Text
    {
        text: "Add Category "
    }
    NameinputRect1{
        id: nameinputRect1 //Имя строки ввода
    }

    AddcatOk{
        id: addcatOk
    }
}
