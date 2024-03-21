import QtQuick 2.15

Item
{
    id: root
    rotation: parent.rotation

    Rectangle
    {
        width: 5
        height: root.height * 0.6;
        radius: 0.23
        color: "black"
        anchors
        {
            horizontalCenter: root.horizontalCenter
        }
        y: root.height * 0.05
    }
}
