import QtQuick 2.0

Item {
    property color soldierColor
    property int velocity
    property int maxLife
    Rectangle {
        id: form
        width: 10
        height: 10
        radius: 5
        border.width: 2
        border.color: 'grey'
        color: soldierColor
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
