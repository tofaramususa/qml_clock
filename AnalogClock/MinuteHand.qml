import QtQuick 2.15

Item
{
    id: root
    rotation: parent.rotation
    property int minutes: 0
    property real minuteCoordinateX: 0
    property real minuteCoordinateY: 0

    signal updateMinute(int newValue)

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
        y: 45

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
                var deltaX = mouseX - root.minuteCoordinateX;
                if (deltaX < 0)
                {
                    root.rotation = (root.rotation - 6 + 360) % 360;

                }
                if (deltaX > 0)
                {
                  root.rotation = (root.rotation + 6 + 360) % 360;
                }
                root.minutes = (root.rotation / 360) * 60
                updateMinute(root.minutes)
            }
        }
        antialiasing: true
    }
}
