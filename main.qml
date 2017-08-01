import QtQuick 2.4
import QtCanvas3D 1.1
import QtQuick.Window 2.2

import "./logic.js" as Soldiers

Window {
    id: window
    x: 100
    y: 100
    title: qsTr("arrows")
    width: 400
    height: 400
    visible: true

    Rectangle{
        id: button
        z:2
        color: "yellow"
        width: 100
        height: 100
        x: 200
        y: 200
        MouseArea {
            anchors.fill: parent
            onClicked: {
                Soldiers.generateSoldiers()
                button.destroy()
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            destination.x = mouseX
            destination.y = mouseY
            Soldiers.moveTo(destination)
            f.x = destination.x
            f.y = destination.y
        }
    }
    Destination{
        id: destination
    }
    Fighter{
        id: f
    }
    Archer{}

//    Canvas3D {
//        id: canvas3d
//        anchors.fill: parent
//        focus: true

//        onInitializeGL: {
//            GLCode.initializeGL(canvas3d);
//        }

//        onPaintGL: {
//            GLCode.paintGL(canvas3d);
//        }

//        onResizeGL: {
//            GLCode.resizeGL(canvas3d);
//        }
//    }
}
