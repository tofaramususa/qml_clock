import QtQuick

Item {
    id: root

    property int value: 0
    property int valueminute: 0
    property int granularity: 12
    Rectangle {
        width: 2
        height: root.height * 0.3
        color: "blue"
        anchors {
            horizontalCenter: root.horizontalCenter
            bottom: root.verticalCenter
        }
        antialiasing: true
    }
    rotation: 360/granularity * (value % granularity) + 360/granularity * (valueminute / 60)
    antialiasing: true

    MouseArea {


    }
}
