import QtQuick

Item
{
    id: root
    rotation: parent.rotation
    property int hours: 0
    property real hourCoordinateX: 0
    property real hourCoordinateY: 0
    property int deltaX: 0

    signal updateMinuteHand(int newValue)

    Rectangle
    {
        id: dashLine
        width: 4
        z: 0
        height: root.height * 0.3
        color: "#E0E0E0"
        opacity: 0.5
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

}
