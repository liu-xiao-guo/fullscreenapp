import QtQuick 2.4
import Ubuntu.Components 1.3
import QtQuick.Window 2.2

//Rectangle {
//    width: Screen.width
//    height: Screen.height

//    color:"red"
//}

Window {
    id: main
    width: Screen.width
    height: Screen.height
    // special flag only supported by Unity8/MIR so far that hides the shell's
    // top panel in Staged mode
    flags: Qt.Window | 0x00800000

    Image {
        anchors.fill: parent
        source: "images/pic.jpg"
    }

    Label {
        anchors.centerIn: parent
        text: "This a full screen app"
        fontSize: "x-large"
    }

    Component.onCompleted: {
        console.log("visibility: " + main.visibility )
        console.log("width: " + Screen.width + " height: " + Screen.height )
    }
}

