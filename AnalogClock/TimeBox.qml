import QtQuick 2.15

Item
{
    id: currentTime

    property int hours: parent.hours;
    property int minutes: parent.minutes;
    property int seconds: parent.seconds;

    Rectangle
    {
        width: 80 // Set your desired width
        height: 30 // Set your desired height
        color: "#997950"
        border.color: "black"
        border.width: 4
        radius: 3
        anchors.centerIn: parent

        Text
        {
            anchors.centerIn: parent
            text: hours.toString().padStart(2, '0') + ":" + minutes.toString().padStart(2, '0')
            font.bold: true
            color: "black"
            font.pixelSize: 20
        }
    }

}
