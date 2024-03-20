import QtQuick 2.15

Item
{
        id: root
        height: root.width < root.height ? root.width : root.height
        width: height
        anchors.centerIn: parent
        // border.width: 10
        // property int hours: currentDate.getHours()
        // property int minutes: currentDate.getMinutes()
        // property int seconds: currentDate.getSeconds()
        // property var currentDate: new Date()

        // Timer {
        // id: timer
        // repeat: true
        // interval: 1000
        // running: true

        // onTriggered: root.currentDate = new Date()
        // }

Rectangle
{
    height: root.height
    width: height
    radius: width/2
    // color: root.color
    border.color: "black"


    //Index Position
    Repeater {

        model: 12

        Item {
            id: hourContainer

            property int hour: index
            height: parent.height / 2
            transformOrigin: Item.Bottom
            rotation: index * 30
            x: parent.width / 2
            y: 0

            Rectangle {
                height: parent.height * 0.05
                width: height
                radius: width / 2
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 15
            }

            //Replace Index with number
            Text {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                x: 0
                y: parent.height * 0.06
                rotation: 360 - index * 30
                text: hourContainer.hour == 0 ? 12 : hourContainer.hour
                font.pixelSize: parent.height * 0.2
                font.family: "Arial"
            }
        }
    }
    //Rectangle
    Rectangle {
        id: id_center;
        anchors.centerIn: parent
        height: root.height* 0.05
        width: height
        radius: width/2
        color: "black"
    }
}

SecondNeedle {
    anchors
    {
        top: root.top
        bottom: root.bottom
        horizontalCenter: parent.horizontalCenter
    }
    value: root.seconds
}

MinuteNeedle {
    anchors
    {
        top: root.top
        bottom: root.bottom
        horizontalCenter: parent.horizontalCenter
    }
    value: root.minutes
}

HourNeedle {
    anchors
    {
        top: root.top
        bottom: root.bottom
        horizontalCenter: parent.horizontalCenter
    }
    value: root.hour
    }
}
