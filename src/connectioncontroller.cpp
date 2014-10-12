#include "connectioncontroller.h"
#include <QDebug>
#include "systeminfo.h"

ConnectionController::ConnectionController(QObject *parent) :
    QObject(parent)
{
}

void ConnectionController::setViewer(QObject *viewer)
{
    qmlViewer = viewer;
}

void ConnectionController::connectSignals()
{
    SystemInfo* info = new SystemInfo; //usuwanie!

    QObject *mainMenu = qmlViewer->findChild<QObject*>("mainMenu");
    QObject *optionsPanel = qmlViewer->findChild<QObject*>("optionsPanel");

    QObject::connect(qmlViewer, SIGNAL(sigExit()), this, SLOT(slot()));
    QObject::connect(mainMenu, SIGNAL(systemSig()), info, SLOT(executeInfo()));
    QObject::connect(optionsPanel, SIGNAL(unameSig()), info, SLOT(uname()));

    QObject::connect(info, SIGNAL(unameSigForUI(QVariant)), qmlViewer, SLOT(changeResult(QVariant)));


}

void ConnectionController::slot()
{
    qDebug() << "SLOT!!!!";
}
