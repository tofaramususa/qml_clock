import QtQuick 2.15

Window
{
    width: 720
    height: 540
    visible: true
    title: qsTr("Analog Clock")
    color: "grey"

    Clock
    {
        id: clock
        width: 350
        height: 350
    }


    Rectangle
    {
        id: title
        height: 50
        Text
        {
            anchors.centerIn: parent
            text: "fyi.ai"
            font.pixelSize: 20
            color: "blue"
            font.bold: true
        }
        anchors.bottom: clock.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20
    }
}
