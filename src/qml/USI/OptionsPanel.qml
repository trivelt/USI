import QtQuick 1.1

Rectangle {
    id: optionsPanel
    objectName: "optionsPanel"
    width: parent.width*0.6
    height: parent.height*0.5
    color: "#843E64"
    radius: 15

    signal unameSig()

    property alias unameVisible: uname.visible

    Button {
        id: uname
        text: "uname"
        visible: false
        MouseArea
        {
            anchors.fill: parent
            onClicked: unameSig();
        }
    }
}
