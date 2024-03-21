import QtQuick

Item {
    id: root;
    property int value: 0
    property int granularity: 60

    Rectangle {
        width: 5
        height: root.height * 0.6;
        radius: 0.23
        color: "black"
        anchors {
            horizontalCenter: root.horizontalCenter
        }
        antialiasing: true
        y: root.height * 0.05
    }
    rotation: 360/granularity * (value % granularity)
    antialiasing: true
}
