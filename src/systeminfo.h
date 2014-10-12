#ifndef SYSTEMINFO_H
#define SYSTEMINFO_H

#include <QObject>
#include <QProcess>
#include <QVariant>

class SystemInfo : public QObject
{
    Q_OBJECT
public:
    explicit SystemInfo(QObject *parent = 0);
    
signals:
    void unameSigForUI(QVariant text);
    
public slots:
    void executeInfo();
    void uname();

};

#endif // SYSTEMINFO_H
