import QtQuick 2.15

Item
{
    id: root
    height: root.width < root.height ? root.width : root.height
    width: height
    anchors.centerIn: parent
    property int hours
    property int minutes
    property int seconds

        //UI
        Rectangle
        {
            id: clock
            color: "white"
            height: root.height
            width: height
            radius: width/2
            border.color: "black"
            border.width: 40


            Item
            {
                id: dashedCircleContainer

                property int minuteRotation: minute_hand.rotation
                height: parent.height / 2
                transformOrigin: Item.Bottom
                rotation: minuteRotation
                x: parent.width / 2
                y: 0

                Rectangle
                {
                    color: "transparent"
                    id: dashedCircleMinute
                    height: 100
                    width: 100
                    radius: width/2
                    anchors
                    {
                        horizontalCenter: parent.horizontalCenter
                        top: parent.top
                        topMargin: 40
                    }
                    x: 0
                    y: parent.height * 0.06
                    rotation: minute_hand.rotation
                    border.color: "#E0E0E0"
                    border.width: 4
                }
            }

        Item
        {
            id: dashedCircleContainerHour

            property int hourRotation: hour_hand.rotation
            height: parent.height / 2
            transformOrigin: Item.Bottom
            rotation: hourRotation
            x: parent.width / 2
            y: 0

            Rectangle
            {
                color: "transparent"
                id: dashedCircleHour
                height: 100
                width: 100
                radius: width/2
                anchors
                {
                    horizontalCenter: parent.horizontalCenter
                    top: parent.top
                    topMargin: 40
                }
                x: 0
                y: parent.height * 0.06
                rotation: hour_hand.rotation
                border.color: "#E0E0E0"
                border.width: 4
            }
        }
    }

            Repeater
            {
                id: hourFigures
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
                        font.family: "Arial Black"
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
                            topMargin: 7
                        }
                        x: 0
                        y: parent.height * 0.06
                        rotation: 360 - index * 30
                        text: hourContainer.hour == 0 ? "00" : (hourContainer.hour * 5)
                        font.pixelSize: parent.height * 0.06
                        font.family: "Arial Black"
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

        // live time mechanism
        Timer
        {
            interval: 1000 //milliseconds
            running: true
            repeat: true
            onTriggered:
            {
                second_hand.rotation += 6;
                if (second_hand.rotation >= 360)
                {
                    second_hand.rotation = 0;
                    minute_hand.rotation += 6;
                    if(minute_hand.rotation % 12 == 0)
                        hour_hand.rotation += 1;
                }
            }

        }

        Text
        {
            id: dayTimeText
            z: 0
            text: ((hour_hand.rotation > 359 && hour_hand.rotation < 721) ? "PM" : "AM")
            color: "#576570"
            font.family: "Arial Black"
            font.pixelSize: 18
            font.weight: 1000
            font.bold: true
            anchors.horizontalCenter: clock.horizontalCenter
            anchors.top: clock.top
            anchors.topMargin: 275
        }

        HourHand
        {
            id: hour_hand
            anchors
            {
                top: root.top
                bottom: root.bottom
                horizontalCenter: parent.horizontalCenter
            }
            rotation: 182
            onUpdateMinuteHand:
            {
                minute_hand.rotation += newValue
            }
        }

        SecondHand
        {
            id: second_hand
            anchors
            {
                top: root.top
                bottom: root.bottom
                horizontalCenter: parent.horizontalCenter
            }
            rotation: 330
        }

        MinuteHand
        {
            id: minute_hand
            anchors
            {
                top: root.top
                bottom: root.bottom
                horizontalCenter: parent.horizontalCenter
            }
            rotation: 24
            onUpdateHourHand:
            {
                if (hour_hand.rotation > 720)
                       hour_hand.rotation = 0;
                else
                    hour_hand.rotation += newValue
            }
        }

        function displayMinutes(rotation)
        {
            var newRotation = rotation >= 0 ? rotation : 360 + (rotation % 360);
            return Math.floor((newRotation / 6) % 60);
        }

        function displayHours(rotation)
        {
            var adjustedRotation = rotation >= 0 ? rotation % 360 : 360 + (rotation % 360);

            if (adjustedRotation >= 360)
            {
                adjustedRotation = 0;
            }

            return Math.floor((adjustedRotation / 30) % 60);
        }

        hours: displayHours(hour_hand.rotation)

        minutes: displayMinutes(minute_hand.rotation)

        seconds: 0

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
            font.family: "Arial Black"
            font.pixelSize: 40
            font.weight: 1000
            font.bold: true
        }
}
