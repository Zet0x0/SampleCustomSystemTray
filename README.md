# Sample Custom QML System Tray

Just a sample and simple code/app with custom QML system tray (menu)

## "Features"

-   Supports rounded edges for the menu
-   Menu shows even if the main application window is hidden

## Fair Warning

The app _will_ quit if the system tray menu is closed with `QGuiApplication`'s `quitOnLastWindowClosed` attribute set to `true` and if there are no other windows shown

## Known Issues

-   The menu won't close by itself if clicked on the main application window (QTBUG-33481)

###### implement it already, Qt, even QtWidgets is better at this
