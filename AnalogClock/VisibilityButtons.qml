import QtQuick 2.15

Item
{

    id: root

    signal updateVisibility(string value)
    signal updateTimeFormat(int i)

    anchors
    {
        top: parent.top
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }

    Rectangle
    {
        id: hour_hand_button
        height: 60
        width: 65
        border.width: 4
        radius: 15

        MouseArea
        {
            anchors.fill: hour_hand_button
            onClicked:
            {
                updateVisibility("hour_hand");
                hour_hand_button_text.text = (hour_hand_button_text.text === "OFF" ? "ON" : "OFF")
            }
        }

        Text
        {
            id: hour_hand_button_text
            anchors.centerIn: parent
            text: "OFF"
            font.pixelSize: 25
            font.family: "Arial"
            font.bold: true
            font.weight: 1000
        }

        Text
        {
            id: hour_hand_text
            anchors
            {
                top: parent.top
                left: parent.left
                leftMargin: 75
                topMargin: 25
            }
            text: "Hour Hand"
            font.pixelSize: 11
            font.family: "Arial"
            font.weight: 1000
        }
    }

    Rectangle
    {
        id: minute_hand_button
        height: 60
        width: 65
        border.width: 4
        radius: 15

        anchors
        {
            top: parent.top
            right: parent.right
        }

        MouseArea
        {
            anchors.fill: minute_hand_button
            onClicked:
            {
                updateVisibility("minute_hand");
                minute_hand_button_text.text = (minute_hand_button_text.text === "OFF" ? "ON" : "OFF")
            }
        }

        Text
        {
            id: minute_hand_button_text
            anchors.centerIn: parent
            text: "OFF"
            font.pixelSize: 25
            font.family: "Arial"
            font.bold: true
            font.weight: 1000
        }

        Text
        {
            id: minute_hand_text
            anchors
            {
                top: parent.top
                right: parent.left
                rightMargin: 10
                topMargin: 25
            }
            text: "Minute Hand"
            font.pixelSize: 11
            font.family: "Arial"
            font.weight: 1000
        }
    }

    Rectangle
    {
        id: dash_lines_button
        height: 60
        width: 65
        border.width: 4
        radius: 15

        anchors
        {
            bottom: parent.bottom
            left: parent.left
            bottomMargin: 35
        }

        MouseArea
        {
            anchors.fill: dash_lines_button
            onClicked:
            {
                updateVisibility("dash_lines");
                dash_lines_button_text.text = (dash_lines_button_text.text === "OFF" ? "ON" : "OFF")
            }
        }

        Text
        {
            id: dash_lines_button_text
            anchors.centerIn: parent
            text: "OFF"
            font.pixelSize: 25
            font.family: "Arial"
            font.bold: true
            font.weight: 1000
        }

        Text
        {
            id: dash_lines_text
            anchors
            {
                bottom: parent.bottom
                left: parent.left
                leftMargin: 70
                bottomMargin: 22
            }
            text: "Dash Lines"
            font.pixelSize: 11
            font.family: "Arial"
            font.weight: 1000
        }
    }

    Rectangle
    {
        id: digital_button
        height: 60
        width: 65
        border.width: 4
        radius: 15

        anchors
        {
            bottom: parent.bottom
            right: parent.right
            bottomMargin: 65
        }

        MouseArea
        {
            anchors.fill: digital_button
            onClicked:
            {
                updateVisibility("digital");
                digital_button_text.text = (digital_button_text.text === "OFF" ? "ON" : "OFF")
            }
        }

        Text
        {
            id: digital_button_text
            anchors.centerIn: parent
            text: "OFF"
            font.pixelSize: 25
            font.family: "Arial"
            font.bold: true
            font.weight: 1000
        }

        Text
        {
            id: digital_text
            anchors
            {
                bottom: parent.bottom
                right: parent.left
                rightMargin: 5
                bottomMargin: 5
            }
            text: "Digital"
            font.pixelSize: 11
            font.family: "Arial"
            font.weight: 1000
        }
    }

    Rectangle
    {
        id: timeformat_button
        height: 60
        width: 65
        border.width: 4
        radius: 15

        anchors
        {
            bottom: parent.bottom
            right: parent.right
        }

        MouseArea
        {
            anchors.fill: timeformat_button
            onClicked:
            {
                updateTimeFormat("timeformat");
            }
        }

        Text
        {
            id: timeformat_button_text
            anchors.centerIn: parent
            text: "24"
            font.pixelSize: 40
            font.family: "Arial"
            font.bold: true
            font.weight: 1000
        }
    }

    Rectangle
    {
        id: timeformat_button_12
        height: 60
        width: 65
        border.width: 4
        radius: 15

        anchors
        {
            bottom: parent.bottom
            right: parent.right
            rightMargin: 70
        }

        MouseArea
        {
            anchors.fill: timeformat_button_12
            onClicked:
            {
                updateTimeFormat("timeformat");
            }
        }

        Text
        {
            id: timeformat_button_12_text
            anchors.centerIn: parent
            text: "12"
            font.pixelSize: 40
            font.family: "Arial"
            font.bold: true
            font.weight: 1000
        }
    }
}
