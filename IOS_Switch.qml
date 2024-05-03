import QtQuick
import QtQuick.Controls


Switch {
    id:control
    indicator: Rectangle{
        width: parent.width
        height: parent.height
        x:control.leftPadding
        y:parent.height/2 - height/2
        radius: height/2
        color: "white"
        // border.width:  1
        // border.color:  "white"
        Rectangle{
            height: parent.height
            x:0
            y:0
            anchors.left: parent.left
            anchors.right:thumb.right
            radius: height/2
            color: "red"
            // border.width:  2
            // border.color:  "red"
        }

        Rectangle{
            id:thumb
            x: control.checked ? parent.width - width  : 0
            Behavior on x{
                NumberAnimation{
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }

            width: parent.height
            height: width
            radius: height/2
            color: control.checked ? "white" : "red"
            anchors.verticalCenter: parent.verticalCenter
        }
    }

}
