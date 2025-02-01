#pragma once

#include <QPoint>
#include <QQmlEngine>

class Utilities : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    QML_SINGLETON

public:
    Q_INVOKABLE QPoint getGlobalCursorPos();
};
