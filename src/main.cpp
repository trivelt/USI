#include <QApplication>
#include <QGraphicsObject>
#include "qmlapplicationviewer.h"
#include "connectioncontroller.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/USI/main.qml"));
    viewer.showExpanded();

    ConnectionController controller;
    QObject* object = qobject_cast<QObject*>(viewer.rootObject());
    controller.setViewer(object);
    controller.connectSignals();

    return app->exec();
}
