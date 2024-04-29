import QtQuick

Item
{
    id: root
    rotation: parent.rotation
    property int hours: 0
    property real hourCoordinateX: 0
    property real hourCoordinateY: 0
    property int deltaX: 0
    property bool dashVisible: true

    signal updateMinuteHand(int newValue)

    Rectangle
    {
        id: dashedLine
        width: 4
        z: 0
        height: root.height * 0.3
        color: "#E0E0E0"
        opacity: 0.5
        visible: dashVisible
        anchors
        {
            horizontalCenter: root.horizontalCenter
        }
        y: 40
        antialiasing: true
    }


    Rectangle
    {
        id: rect
        width: 15
        height: root.height * 0.3
        color: "black"
        anchors
        {
            horizontalCenter: root.horizontalCenter
        }
        y: 150

        MouseArea
        {
            anchors.fill: parent

            onPressed:
            {
               root.hourCoordinateX = mouseX
               root.hourCoordinateY = mouseY
            }

            onPositionChanged:
            {
                deltaX = mouseX - root.hourCoordinateX;
                if(deltaX < 0)
                {
                    root.rotation -= 1;
                    updateMinuteHand(-12);
                }
                if(deltaX > 0)
                {
                    root.rotation += 1;
                    updateMinuteHand(12)
                }
            }
        }
        antialiasing: true
    }

    Item
    {
        id: dashedCircleContainerHour

        height: parent.height / 2
        x: parent.width / 2
        y: 0
        visible: dashVisible
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
            rotation: root.rotation
            border.color: "#E0E0E0"
            border.width: 4
        }
    }
}
