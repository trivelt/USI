import QtQuick 1.1

Rectangle {
    width: 800
    height: 600
    color: "#2C001E"

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }
    MainMenu
    {
        id: mainMenu
        y: 15
        x: 15

    }

    OptionsPanel
    {
        id: optionsPanel
        y: 15
        x: parent.width-width-15
    }

    ResultsPanel
    {
        id: resultsPanel
        y: parent.height-height-20
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
