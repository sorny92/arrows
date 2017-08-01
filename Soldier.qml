import QtQuick 2.0

Item {
    property color soldierColor
    property int velocity
    property int maxLife
    x: Math.random()*400
    y: Math.random()*400

    Rectangle {
        id: form
        width: 10
        height: 10
        radius: 5
        border.width: 2
        border.color: 'grey'
        color: soldierColor
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("it's me")
            }
        }
    }
    Behavior on x {
        SmoothedAnimation {
            velocity: velocity
            easing.type: Easing.InOutCubic
        }
    }
    Behavior on y {
        SmoothedAnimation {
            velocity: velocity
            easing.type: Easing.InOutCubic
        }
    }
}
