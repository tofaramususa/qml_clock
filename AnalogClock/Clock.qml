import QtQuick 2.15

Item
{
    id: root
    property int hours: 4
    property int minutes: 59
    property int seconds: 55
    height: root.width < root.height ? root.width : root.height
    width: height
    anchors.centerIn: parent

    Timer {
            interval: 1000 //milliseconds
            running: true
            repeat: true
            onTriggered:
            {
                root.seconds++
                if (root.seconds == 60)
                {
                    root.seconds = 0;
                    root.minutes += 1;
                    if (root.minutes == 60)
                    {
                        root.minutes = 0;
                        root.hours++;
                        if (root.hours == 13)
                        {
                            hours = 1;
                        }
                    }
                }
            }
        }

        Rectangle
        {
            color: "#997950"
            id: rect
            height: root.height
            width: height
            radius: width/2
            border.color: "black"
            border.width: 10

            Repeater
            {

                model: 12

                Item
                {
                    id: hourContainer

                    property int hour: index
                    height: parent.height / 2
                    transformOrigin: Item.Bottom
                    rotation: index * 30
                    x: parent.width / 2
                    y: 0

                    Rectangle
                    {
                        height: parent.height * 0.05
                        width: height
                        radius: width / 2
                        color: "#997950"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 15
                    }

                    Text
                    {
                        anchors
                        {
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
        }

        SecondHand
        {
            anchors
            {
                top: root.top
                bottom: root.bottom
                horizontalCenter: parent.horizontalCenter
            }
            rotation: (root.seconds / 60) * 360
        }

        MinuteHand
        {
            anchors
            {
                top: root.top
                bottom: root.bottom
                horizontalCenter: parent.horizontalCenter
            }
            rotation: (root.minutes / 60) * 360
            onUpdateMinute:
            {
                root.minutes = newValue
            }
        }

        HourHand
        {
            anchors
            {
                top: root.top
                bottom: root.bottom
                horizontalCenter: parent.horizontalCenter
            }
            rotation: (root.hours / 12) * 360
            onUpdateHours:
            {
                root.hours = newValue
            }
        }

        Rectangle
        {
            id: id_center;
            anchors.centerIn: parent
            height: root.height* 0.05
            width: height
            radius: width/2
            color: "black"
        }

        TimeBox {}
}
