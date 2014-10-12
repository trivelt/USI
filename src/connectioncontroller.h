#ifndef CONNECTIONCONTROLLER_H
#define CONNECTIONCONTROLLER_H

#include <QObject>

class ConnectionController : public QObject
{
    Q_OBJECT
public:
    explicit ConnectionController(QObject *parent = 0);
    void setViewer(QObject* viewer);
    void connectSignals();
    
signals:
    
public slots:
    void slot();

private:
    QObject* qmlViewer;
    
};

#endif // CONNECTIONCONTROLLER_H
