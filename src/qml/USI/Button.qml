import QtQuick 1.1

Rectangle {
    objectName: "myButton"
    property alias text: txt.text
    width: 80
    height: 80
    border.color: "black"
    border.width: 5
    color: "white"
    radius: 20


    Text {
        anchors.centerIn: parent
        id: txt
        text: qsTr("Button")
    }
    MouseArea
    {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            parent.color = "grey"; }
        onExited:
            parent.color = "white";
    }
}
