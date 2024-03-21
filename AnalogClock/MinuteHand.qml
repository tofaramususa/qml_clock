import QtQuick 2.15

Item
{
    id: root
    rotation: parent.rotation
    property real minuteCoordinateX: 0
    property real minuteCoordinateY: 0

    Rectangle
    {
        id: rect
        width: 9
        height: root.height * 0.5;
        radius: 4
        color: "black"
        anchors
        {
            horizontalCenter: root.horizontalCenter
        }
        y: root.height * 0.06

        MouseArea
        {
            anchors.fill: parent

            onPressed:
            {
               root.minuteCoordinateX = mouseX
               root.minuteCoordinateY = mouseY
            }

            onPositionChanged:
            {

                var deltaX = mouseX - root.minuteCoordinateX;
                if(deltaX < 0)
                    root.rotation -= 6;
                if(deltaX > 0)
                    root.rotation += 6;
            }
        }
    }
}
