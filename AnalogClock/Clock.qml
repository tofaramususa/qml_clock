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
            color: "white"
            id: clock
            height: root.height
            width: height
            radius: width/2
            border.color: "black"
            border.width: 40

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

                        height: parent.height * 0.07
                        width: parent.height * 0.02
                        color: "black"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 40
                        antialiasing: true
                    }

                    Text
                    {
                        id: hourText
                        anchors
                        {
                            horizontalCenter: parent.horizontalCenter
                            top: parent.top
                            topMargin: 60
                        }
                        x: 0
                        y: parent.height * 0.06
                        rotation: 360 - index * 30
                        text: hourContainer.hour == 0 ? 12 : hourContainer.hour
                        font.pixelSize: parent.height * 0.2
                        font.family: "helveticaneue"
                        font.weight: 800
                        font.bold: true
                    }

                    Text
                    {
                        id: minuteText
                        anchors
                        {
                            horizontalCenter: parent.horizontalCenter
                            top: parent.top
                            topMargin: 10
                        }
                        x: 0
                        y: parent.height * 0.06
                        rotation: 360 - index * 30
                        text: hourContainer.hour == 0 ? "00" : (hourContainer.hour * 5)
                        font.pixelSize: parent.height * 0.06
                        font.family: "helveticaneue"
                        font.weight: 800
                        color: "white"
                        font.bold: true
                    }

                }
            }

            Repeater {

                model: 60

                Item
                {
                    id: minuteContainer

                    property int minute: index
                    height: parent.height / 2
                    transformOrigin: Item.Bottom
                    rotation: index * 6
                    x: parent.width / 2
                    y: 0

                    Rectangle
                    {
                        height: parent.height * 0.05
                        width: parent.height * 0.005
                        color: "black"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 40
                        antialiasing: true
                    }
                }

            }
        }

        //where we draw and rotate second hand
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


        //where we draw and rotate the minute hand
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

        //where we draw and rotate the hour hand
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
            id: timeBox
            width: 130
            height: 60
            color: "white"
            opacity: 0.9
            anchors.horizontalCenter: clock.horizontalCenter
            anchors.top: clock.top
            anchors.topMargin: 220
        }

        Text
        {
            id: timeBoxText
            anchors.centerIn: timeBox
            text: (hours === 0 ? '12' : hours.toString()).padStart(2, '0') + ":" + minutes.toString().padStart(2, '0')
            color: "black"
            font.family: "helveticaneue"
            font.pixelSize: 40
            font.weight: 1000
            font.bold: true
        }
}
