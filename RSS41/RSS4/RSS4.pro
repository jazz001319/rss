#-------------------------------------------------
#
# Project created by QtCreator 2013-05-17T09:26:57
#
#-------------------------------------------------

QT       += core gui declarative\
            sql\
            network \
            webkit \
            xml

TARGET = RSS4
TEMPLATE = app


SOURCES += main.cpp \
    treemodel.cpp \
    mainwindow.cpp

HEADERS  += \
    treemodel.h \
    mainwindow.h

OTHER_FILES += \
    main.qml \
    ScrollBar.qml \
    NewsDelegate.qml \
    BusyIndicator.qml \
    ComboBox.qml \
    ComboBoxButton.qml \
    FeedModel.qml \
    TreeView.qml \
    ButtonExit.qml \
    RssNews.qml \
    ButtonAdd.qml \
    ButtonReturn.qml \
    AddRow.qml \
    DeleteRow.qml \
    AddcategoryRow.qml \
    DeleteCategoryRow.qml

RESOURCES += \
    qrc.qrc

