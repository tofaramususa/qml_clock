import QtQuick 2.15

Item
{
    
    id: root
    height: root.width < root.height ? root.width : root.height
    width: height
    
    Rectangle 
	{
        height: root.height
        width:  height
    }
}
