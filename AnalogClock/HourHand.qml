import QtQuick

Item {
    id: root
    rotation: parent.rotation
    property real hourCoordinateX: 0
    property real hourCoordinateY: 0

    Rectangle
    {
        width: 10
        height: root.height * 0.3
        color: "blue"
        radius: 4
        anchors
        {
            horizontalCenter: root.horizontalCenter
            bottom: root.verticalCenter
        }

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
                    root.rotation -= 30;
                if(deltaX > 0)
                    root.rotation += 30;
            }
        }




    }
}
