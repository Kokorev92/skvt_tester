import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Controls.Material 2.13

Window {
    id: window 
    width: 620
    height: 620 + header.height
    visible: true
    title: qsTr('SKVT TESTER')

    Page {
        anchors.fill: parent
        header: Custom_header {
            id: header
        }

        Pane {
            anchors.fill: parent
            Skvt_visualisator {}

            Material.background: "#FFF"
        }
    }
}
