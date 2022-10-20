#ifndef TEMPCONTROLLER_H
#define TEMPCONTROLLER_H
#include <QObject>


class TempController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int targetTemp READ targetTemp WRITE setTargetTemp NOTIFY targetTempChanged)

private:
    int m_targetTemp;

public:
    explicit TempController(QObject *parent = nullptr);
    int targetTemp() const;
    Q_INVOKABLE void incrementTargetTemp(const int & value);

signals:
    void targetTempChanged();

public slots:
    void setTargetTemp(int newTargetTemp);


};

#endif
