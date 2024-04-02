import QtQuick

Item
{
    id: root
    rotation: parent.rotation
    property int hours: 0
    property real hourCoordinateX: 0
    property real hourCoordinateY: 0

    signal updateHours(int newValue)
    Rectangle
    {
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
                var deltaX = mouseX - root.hourCoordinateX;
                if(deltaX < 0)
                    root.rotation = (root.rotation - 3 + 360) % 360;
                if(deltaX > 0)
                    root.rotation = (root.rotation + 3 + 360) % 360;
            }
        }
        antialiasing: true
    }

    onRotationChanged:
    {
        if (rotation % 12 === 0)
        {
            root.hours = (rotation / 360) * 12;
            updateHours(root.hours);
        }
    }
}
