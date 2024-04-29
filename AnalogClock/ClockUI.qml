import QtQuick

Item
{
    property string colorType;
    Repeater
    {
        id: hourFigures
        model: 12

        Item
        {
            id: hourContainer

            property int hour: index
            height: parent.height / 2
            transformOrigin: Item.Bottom
            rotation: index * 30
            x: parent.width / 2
            y: 0

            Rectangle
            {
                id: hourBoxIndicator
                height: parent.height * 0.07
                width: parent.height * 0.02
                color: colorType
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 40
                antialiasing: true
            }

            Text
            {
                id: hourText
                anchors
                {
                    horizontalCenter: parent.horizontalCenter
                    top: parent.top
                    topMargin: 60
                }
                x: 0
                y: parent.height * 0.06
                rotation: 360 - index * 30
                text: hourContainer.hour == 0 ? 12 : hourContainer.hour
                font.pixelSize: parent.height * 0.2
                font.family: "Arial Black"
                font.weight: 800
                font.bold: true
            }

            Text
            {
                id: minuteText
                anchors
                {
                    horizontalCenter: parent.horizontalCenter
                    top: parent.top
                    topMargin: 7
                }
                x: 0
                y: parent.height * 0.06
                rotation: 360 - index * 30
                text: hourContainer.hour == 0 ? "00" : (hourContainer.hour * 5)
                font.pixelSize: parent.height * 0.06
                font.family: "Arial Black"
                font.weight: 800
                color: "white"
                font.bold: true
            }

        }
    }
    //prints the minute boxes things on the side
    Repeater
    {

        model: 60

        Item
        {
            id: minuteBoxIndicator

            property int minute: index
            height: parent.height / 2
            transformOrigin: Item.Bottom
            rotation: index * 6
            x: parent.width / 2
            y: 0

            Rectangle
            {
                height: parent.height * 0.05
                width: parent.height * 0.005
                color: colorType
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 40
                antialiasing: true
            }
        }

    }
}
