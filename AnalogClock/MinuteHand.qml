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
        radius: 0.23
        color: "black"
        anchors
        {
            horizontalCenter: root.horizontalCenter
        }
        // antialiasing: true
        y: root.height * 0.05

        MouseArea
        {
            //id of the item to Drag
            anchors.fill: parent
            drag.target: rect


            // define target element of press and drag
            onPressed:
            {
                // Start the drag operation when the mouse button is pressed
                // Set the initial position of the drag
               root.minuteCoordinateX = mouseX
               root.minuteCoordinateY = mouseY
            }

            onPositionChanged:
            {

                var deltaX = mouseX - root.minuteCoordinateX;
                // Adjust rotation based on deltaX (positive: clockwise, negative: counter-clockwise)
                if(deltaX < 0)
                    root.rotation -= 6;
                if(deltaX > 0)
                    root.rotation += 6;


                // Calculate the angle between the middle hand and the mouse press position
                // var angle = Math.atan2(mouseY - root.minuteCoordinateY, mouseX - root.minuteCoordinateX) * 180 / Math.PI;

                // // If the mouse is to the left of the middle hand, rotate it left
                // if (angle < root.rotation)
                // {
                //     root.rotation = root.rotation - 6;
                //     if (rotation <= 0)
                //     {
                //        root.rotation = 360;
                //     }
                // }
                // else if (angle > root.rotation)
                // {
                //     root.rotation = root.rotation + 6;
                //     if (root.rotation >= 360)
                //     {
                //        root.rotation = 0;
                //     }
                // }
                // onReleased: {
                //     root.minuteCoordinateX = mouseX;
                //     root.minuteCoordinateY = mouseY;
                // }
            }
        }
    }
}
