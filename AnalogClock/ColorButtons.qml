import QtQuick 2.15

Item
{
    id: root

    signal updateBorderWidth(string color)

    anchors
    {
        bottom: parent.bottom
        left: parent.left
    }

    Rectangle
    {
        id: blackButton
        height: 27
        width: 27
        radius: width/2
        color: "black"

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                updateBorderWidth("black");
            }
        }

        anchors
        {
            bottom: parent.bottom
            left: parent.left
        }
    }

    Rectangle
    {
        id: blueButton
        height: 27
        width: 27
        radius: width/2
        color: "#1A80D9"

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                updateBorderWidth("#1A80D9");
            }
        }

        anchors
        {
            bottom: parent.bottom
            left: parent.left
            leftMargin: 32
        }
    }

    Rectangle
    {
        id: orangeButton
        height: 27
        width: 27
        radius: width/2
        color: "#F24822"

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                updateBorderWidth("#F24822");
            }
        }

        anchors
        {
            bottom: parent.bottom
            left: parent.left
            leftMargin: 64
        }
    }

    Rectangle
    {
        id: greenButton
        height: 27
        width: 27
        radius: width/2
        color: "#3C8C3A"

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                updateBorderWidth("#3C8C3A");
            }
        }

        anchors
        {
            bottom: parent.bottom
            left: parent.left
            leftMargin: 96
        }
    }
}
