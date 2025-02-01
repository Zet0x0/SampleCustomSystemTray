# https://doc.qt.io/qt-6/cmake-build-qml-application.html

cmake_minimum_required(VERSION 3.16)

project(samplecustomsystemtray VERSION 0.1 LANGUAGES CXX)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_standard_project_setup(REQUIRES 6.5)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

qt_policy(SET QTP0004 NEW)

qt_add_executable(samplecustomsystemtray
    main.cpp
)

qt_add_qml_module(samplecustomsystemtray
    URI SampleCustomSystemTray
    RESOURCE_PREFIX /
    QML_FILES
        qml/Main.qml
        qml/SystemTrayIcon.qml
        qml/SystemTrayMenu.qml
    RESOURCES
        icons/trayIcon.png
    SOURCES
        utilities.h utilities.cpp
)

target_link_libraries(samplecustomsystemtray
    PRIVATE Qt6::Quick)
