import QtQuick 2.15

//overall clock
Item
{
    id: root
    height: root.width < root.height ? root.width : root.height
    width: height
    anchors.centerIn: parent
    property int hours
    property int minutes
    property int seconds

        Rectangle
        {
            id: clockBorder
            color: "white"
            height: root.height
            width: height
            radius: width/2
            border.color: "black"
            border.width: 40
        }

        ClockUI
        {
            id: clock_ui
            height: parent.height;
            width: parent.width;
            colorType: "black"
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
            visible: true
            text: ((hour_hand.rotation > 359 && hour_hand.rotation < 721) ? "PM" : "AM")
            color: "#576570"
            font.family: "Arial Black"
            font.pixelSize: 18
            font.weight: 1000
            font.bold: true
            anchors.horizontalCenter: clockBorder.horizontalCenter
            anchors.top: clockBorder.top
            anchors.topMargin: 275
        }

        //this it hour hand
        HourHand
        {
            id: hour_hand
            visible: true
            dashVisible: true
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

        //this is the second hand
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
        //this is the minute hand
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
            color: "black"
            dashVisible: true
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
            visible: true;
            width: 130
            height: 60
            color: "white"
            opacity: 0.9
            anchors.horizontalCenter: clock.horizontalCenter
            anchors.top: clock.top
            anchors.topMargin: 220

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

        ColorButtons
        {
            onUpdateBorderWidth:
            {
                clockBorder.border.color = color
                minute_hand.color = color;
                clock_ui.colorType = color;
            }
        }

        VisibilityButtons
        {
            onUpdateVisibility:
            {
                if(value === "hour_hand")
                 hour_hand.visible = !hour_hand.visible
                if(value === "minute_hand")
                    minute_hand.visible = !minute_hand.visible
                if(value === "dash_lines")
                {
                    hour_hand.dashVisible = !hour_hand.dashVisible
                    minute_hand.dashVisible = !minute_hand.dashVisible
                }
                if(value === "digital")
                {
                    timeBox.visible = !timeBox.visible
                    dayTimeText.visible = !dayTimeText.visible
                }
            }
        }
}
