import QtQuick 2.15

Item
{
    id: root
    rotation: parent.rotation
    property int minutes: 0
    property real minuteCoordinateX: 0
    property real minuteCoordinateY: 0
     property int deltaX: 0

    signal updateHourHand(int newValue)

    Rectangle
    {
        id: rect
        width: 15
        height: root.height * 0.45;
        color: "black"
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
