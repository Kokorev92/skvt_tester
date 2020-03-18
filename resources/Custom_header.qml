import QtQuick.Controls 2.13
import QtQuick.Controls.Material 2.13

MenuBar {
    id: menu_bar
    Material.theme: Material.Dark

    Menu {
        id: menu
        Material.theme: Material.Dark
        title: qsTr("Menu")

        Action {
            text: qsTr('Exit')
            onTriggered: close()
        }
    }
}
