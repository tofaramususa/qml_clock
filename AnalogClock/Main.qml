import QtQuick 2.15

Window
{
    width: 750
    height: 750
    visible: true
    title: qsTr("Analog Clock")
    color: "white"

    Clock
    {
        id: clock
        width: 650
        height: 650
    }
}
