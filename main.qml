import QtQuick 2.4
import QtCanvas3D 1.1
import QtQuick.Window 2.2

//import "glcode.js" as GLCode

Window {
    x: 100
    y: 100
    title: qsTr("arrows")
    width: 200
    height: 200
    visible: true

    function hello(){
        console.log("hola")
    }
    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            destination.x = mouseX
            destination.y = mouseY
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
