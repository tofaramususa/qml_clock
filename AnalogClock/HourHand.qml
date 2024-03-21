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
        width: 10
        height: root.height * 0.3
        color: "#0000FF"
        radius: 4
        anchors
        {
            horizontalCenter: root.horizontalCenter
            bottom: root.verticalCenter
        }
        y: root.height * 0.5

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
                if (rotation % 12 === 0)
                {
                    root.hours = rotation / 30;
                    updateHours(root.hours);
                }
            }
        }
    }
}
