import QtQuick
import QtQuick.Controls

Window {
    id: window

    function popup(position) {
        /*
        make it so the menu would never overflow out of screen by
        moving the xy origin point from the top-left corner to
        the bottom-left corner
        */
        x = Math.max(0, Math.min(Screen.width - width, position.x));
        y = Math.max(0, Math.min(Screen.height - height, position.y - height + 1)); // `+ 1` for perfect alignment

        show();
        menu.popup();
    }

    color: "#00000000" // make the window transparent to support menus with rounded edges
    flags: Qt.Popup
    height: menu.height
    width: menu.width

    Menu {
        id: menu

        onClosed: window.hide()

        MenuItem {
            text: "Button 1"
        }

        MenuItem {
            text: "Button 2"
        }

        MenuSeparator {
        }

        MenuItem {
            text: "Quit App"

            onTriggered: Qt.quit()
        }

        MenuSeparator {
        }

        /*
        this button should probably always exist because when you click on
        the application window with the menu open, the menu doesn't close;
        it's just yet another bug Qt doesn't want to fix (QTBUG-33481)
        */
        MenuItem {
            text: "Hide Menu"
        }
    }
}
