import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: applicationWindow

    property QtObject systemTrayMenu: null

    height: 480
    visible: true
    width: 640

    Component.onCompleted: systemTrayMenu = systemTrayMenuComponent.createObject()

    SystemTrayIcon {
        applicationWindow: applicationWindow
        systemTrayMenu: applicationWindow.systemTrayMenu
    }

    Component {
        id: systemTrayMenuComponent

        SystemTrayMenu {
        }
    }
}
