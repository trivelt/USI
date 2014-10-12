import QtQuick 1.1

Rectangle {
    signal sigExit()
    width: 800
    height: 600
    color: "#2C001E"

    Connections
    {
        target: mainMenu
        onSystemSig: optionsPanel.unameVisible = true
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            sigExit()
            //Qt.quit();
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

    function changeResult(result)
    {
        resultsPanel.text = result;
    }

}
