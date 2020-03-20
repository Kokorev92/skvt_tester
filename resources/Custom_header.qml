import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Controls.Material 2.13
import QtQuick.Dialogs 1.1

MenuBar {
    id: menu_bar
    Material.theme: Material.Dark

    Menu {
        id: menu
        Material.theme: Material.Dark
        title: qsTr("Menu")

        Action {
            text: qsTr('Settings');
            onTriggered: settings_dialog.open()
       }

        MenuSeparator {}

        Action {
            text: qsTr('Exit')
            onTriggered: close()
        }
    }

    Dialog {
        id: settings_dialog
        parent: Overlay.overlay
        title: qsTr('Serial port settings')
        modal: true
        width: parent.width / 2
        height: parent.height / 2
        anchors.centerIn: parent
        closePolicy: Popup.NoAutoClose

        standardButtons: StandardButton.Ok

        Pane {
            Material.background: "#FFFFFF"
            ComboBox {
                id: ports
                model: portsModel
                width: 200
            }
        }

        ListModel {
            id: portsModel
            // These elements for example
            ListElement { text: "/dev/ttyUSB0" }
            ListElement { text: "/devttyACM0" }
        }
    }
}
