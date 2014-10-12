#include "systeminfo.h"
#include <QProcess>
#include <QDebug>

SystemInfo::SystemInfo(QObject *parent) :
    QObject(parent)
{
}

void SystemInfo::executeInfo()
{
    qDebug() << "EXECUTING";
}

void SystemInfo::uname()
{
    qDebug() << "uname";
    QProcess* proc = new QProcess;
    QString program = "uname";
    QStringList args;
    args.append("-a");
    proc->start(program, args);

    proc->waitForFinished();

    QString output(proc->readAll());
    qDebug() << output << " and pid=" << proc->pid();
    QVariant outputV = output;
    emit unameSigForUI(outputV);
}
