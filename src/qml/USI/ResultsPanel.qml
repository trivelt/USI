import QtQuick 1.1

Rectangle {
    width: parent.width*0.94
    height: parent.height*0.4
    color: "#E05A2B"
    radius: 15

    property alias text: txt.text

    Text {
        id: txt
        width: parent.width-15
        height: parent.height-50
        text: qsTr("RESULTS")
        anchors.centerIn: parent

    }
}
