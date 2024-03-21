import QtQuick 2.15

Item
{
        id: root
        height: root.width < root.height ? root.width : root.height
        width: height
        anchors.centerIn: parent
        property int hours: 5
        property int minutes: 10
        property int seconds: 30

Rectangle
{
    id: rect
    height: root.height
    width: height
    radius: width/2
    // color: root.color
    border.color: "black"

    //Index Position
    Repeater
    {

        model: 12

        Item {
            id: hourContainer

            property int hour: index
            height: parent.height / 2
            transformOrigin: Item.Bottom
            rotation: index * 30
            x: parent.width / 2
            y: 0

            Rectangle {
                height: parent.height * 0.05
                width: height
                radius: width / 2
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 15
            }

            //Replace Index with number
            Text
            {
                anchors
                {
                    horizontalCenter: parent.horizontalCenter
                }
                x: 0
                y: parent.height * 0.06
                rotation: 360 - index * 30
                text: hourContainer.hour == 0 ? 12 : hourContainer.hour
                font.pixelSize: parent.height * 0.2
                font.family: "Arial"
            }
        }
    }
}

    Rectangle
    {
        id: id_center;
        anchors.centerIn: parent
        height: root.height* 0.05
        width: height
        radius: width/2
        color: "black"
    }

// SecondHand {
//     anchors
//     {
//         top: root.top
//         bottom: root.bottom
//         horizontalCenter: parent.horizontalCenter
//     }
//     value: root.seconds
// }

MinuteHand
{
    anchors
    {
        top: root.top
        bottom: root.bottom
        horizontalCenter: parent.horizontalCenter
    }
    rotation: (root.minutes / 60) * 360
}

// HourHand
// {
//     anchors
//     {
//         top: root.top
//         bottom: root.bottom
//         horizontalCenter: parent.horizontalCenter
//     }
//     value: root.hour
//     }
// }
}
