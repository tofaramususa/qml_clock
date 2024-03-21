// import QtQuick 2.15

// Item
// {
//     id: root

//     property alias value: minuteHand.value
//     property int granularity: 60
//     property int stepSize: 1  // Adjust this value to control the step size when dragging

//     MinuteHand
//     {
//         id: minuteHand
//         anchors.fill: parent
//     }

//     MouseArea
//     {
//         drag: true
//         anchors.fill: parent
//         drag.target: minuteHand
//         drag.axis: Drag.YAxis
//         drag.minimumY: 0
//         drag.maximumY: parent.height
//         preventStealing: true

//         onPressed: {
//             minuteHand.grab()
//         }

//         onReleased: {
//             minuteHand.ungrab()
//             // Snap to the nearest minute value
//             var nearestMinuteValue = Math.round(minuteHand.value / (60 / granularity)) * (60 / granularity)
//             minuteHand.value = nearestMinuteValue
//         }

//         onPositionChanged: {
//             var newValue = Math.max(0, Math.min(granularity, minuteHand.value + (stepSize * drag.deltaY / parent.height)))
//             minuteHand.value = newValue
//         }
//     }
// }


// import QtQuick

// Item {
//   id: root

//   property int value: 0
//   property int granularity: 60

//   // Minute hand with drag functionality
//   Item {
//     id: minuteHand
//     anchors {
//       top: root.top
//       bottom: root.bottom
//       horizontalCenter: parent.horizontalCenter
//     }

//     // Appearance of the minute hand
//     Rectangle {
//       width: 2
//       height: root.height * 0.4
//       color: "black"
//       anchors.centeredIn: parent
//       antialiasing: true
//     }

//     // Drag handler for minute hand
//     DragHandler {
//       onActiveChanged: {
//         if (active) {
//           minuteHand.Drag.active = true
//         } else {
//           minuteHand.Drag.active = false
//         }
//       }

//       onXChanged: {
//         // Calculate change in mouse position (deltaX)
//         var deltaX = MouseArea.position.x - pressPosition.x

//         // Update value based on direction and granularity
//         value = (value + Math.sign(deltaX) * (granularity / 6)) % granularity
//       }
//     }

//     // Mouse area for capturing drag events
//     MouseArea {
//       anchors.fill: parent
//     }

//     // Rotation calculation directly linked to value (updated)
//     property double rotation: 360.0 / granularity * (value % granularity)
//   }
// }


import QtQuick

Item {
    id: root

    property int value: 0
    property int granularity: 60

    Rectangle {
        width: 2
        height: root.height * 0.4
        color: "black"
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.verticalCenter
        }
        antialiasing: true
    }

    RotationAnimation {
        id: rotationAnimation
        target: root
        property: "rotation"
        duration: 100
        easing.type: Easing.Linear
    }

    MouseArea {
        anchors.fill: parent
        drag.target: root
        drag.axis: Drag.XAxis
        drag.minimumX: 0
        drag.maximumX: parent.width - root.width
        onPressed: {
            rotationAnimation.stop()
        }
        onPositionChanged: {
            var angle = (Math.atan2(mouseY - (root.height / 2), mouseX - (root.width / 2)) * 180 / Math.PI) + 90;
            if (angle < 0) angle += 360;
            root.rotation = 360 - angle;
            root.value = Math.round(root.rotation * (root.granularity / 360));
        }
    }

    antialiasing: true
}
