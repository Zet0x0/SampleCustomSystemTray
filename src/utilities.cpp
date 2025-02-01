#include "utilities.h"
#include <QCursor>

QPoint Utilities::getGlobalCursorPos()
{
    return QCursor::pos();
}
