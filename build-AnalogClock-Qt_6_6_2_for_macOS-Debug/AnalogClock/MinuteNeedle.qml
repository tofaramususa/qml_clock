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
            horizontalCenter: root.horizontalCenter
            bottom: root.verticalCenter
        }
        antialiasing: true
    }
    rotation: 360/granularity * (value % granularity)
    antialiasing: true
}
