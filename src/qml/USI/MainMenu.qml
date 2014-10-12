import QtQuick 1.1

Rectangle {
    id: mainMenu
    objectName: "mainMenu"
    width: parent.width*0.3
    height: parent.height*0.5
    color: "#84377D"
    radius: 15

    signal systemSig()

    Button
    {
        id: system
        text: "system"
        x: 5
        y: 5
        MouseArea
        {
            anchors.fill: parent
            onClicked: systemSig();
        }
    }

    Button {
        id: proc
        text: "proc"
        x: 5
        y: 15+height
    }

    Button {
        id: ports
        text: "ports"
        x: 5
        y: 25+height*2
    }

    Button {
        id: modules
        text: "modules"
        x: parent.width-width-5
        y: 5
    }

    Button {
        id: net
        text: "net"
        x: parent.width-width-5
        y: 15+height
    }

    Button {
        id: hard
        text: "hard"
        x: parent.width-width-5
        y: 25+height*2
    }
}
