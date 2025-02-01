import QtQuick
import Qt.labs.platform
import QtQuick.Controls

SystemTrayIcon {
    required property ApplicationWindow applicationWindow
    required property QtObject systemTrayMenu

    icon.name: ":/SampleCustomSystemTray/icons/trayIcon.png"
    tooltip: "Sample Custom System Tray"
    visible: systemTrayMenu !== null

    onActivated: reason => {
        switch (reason) {
        case SystemTrayIcon.Context:
            {
                systemTrayMenu.popup(Utilities.getGlobalCursorPos());

                break;
            }
        case SystemTrayIcon.Trigger:
            {
                if (applicationWindow.visible) {
                    applicationWindow.hide();
                } else {
                    applicationWindow.show();
                    applicationWindow.requestActivate();
                }

                break;
            }
        default:
            {
                return;
            }
        }
    }
}
