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
    FeedinputRect{
        id: feedinputRect //Имя строки ввода
    }

    Text
    {
        text: "Name: "
    }
    FeedNameinputRect{
        id: feedNameinputRect //Имя строки ввода
    }

    Text
    {
        text: "To Category "
    }
    FeedCategoryinputRect{
        id: feedCategoryinputRect //Имя строки ввода
    }

    AddOk{
        id: addOk
    }
}
