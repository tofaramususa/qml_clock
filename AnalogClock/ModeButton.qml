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
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter

        Text {
            id: modeText
            text: "Live Mode"
            font.bold: true
            color: "black"
            font.pixelSize: 20
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (modeText.text === "Live Mode") {
                    modeText.text = "Drag Mode";
                    // Perform actions for switching to Drag Mode
                } else {
                    modeText.text = "Live Mode";
                    // Perform actions for switching to Live Mode
                }
            }
        }
    }
}
