import QtQuick 2.15

Item
{
    id: root
    rotation: parent.rotation
    property int minutes: 0
    property real minuteCoordinateX: 0
    property real minuteCoordinateY: 0
    property int deltaX: 0
    property string color;
    property bool dashVisible: true;

    signal updateHourHand(int newValue)

    Item
    {
        id: dashedCircleContainer

        height: parent.height / 2
        x: parent.width / 2
        y: 0
        visible: dashVisible

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
            rotation: root.rotation
            border.color: "#E0E0E0"
            border.width: 4
        }
    }

    Rectangle
    {
        id: rect
        width: 15
        height: root.height * 0.45;
        color: root.color;
        anchors
        {
            horizontalCenter: root.horizontalCenter
        }
        y: 60

        MouseArea
        {
            id: minuteMouseArea
            anchors.fill: parent

            onPressed:
            {
               root.minuteCoordinateX = mouseX
               root.minuteCoordinateY = mouseY
            }

            onPositionChanged:
            {
                deltaX = mouseX - root.minuteCoordinateX;
                if (deltaX < 0)
                {
                    root.rotation -= 6;
                    if(!(root.rotation % 12 == 0))
                       updateHourHand(-1)
                }
                if (deltaX > 0)
                {
                    root.rotation += 6;
                    if((root.rotation % 12 == 0))
                        updateHourHand(1)
                }
            }
        }
        antialiasing: true
    }
}
