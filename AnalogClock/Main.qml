import QtQuick 2.15

Window
{
    id: window
    width: 850
    height: 850
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
