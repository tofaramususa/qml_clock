import QtQuick 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Analog Clock")

    ClockFace
    {
        id: clock
        width: 350
        height: 350
    }
}