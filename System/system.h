#ifndef SYSTEM_H
#define SYSTEM_H
#include <QObject>
#include <QTimer>


class System : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool CarLocker READ CarLocker WRITE setCarLocker NOTIFY CarLockerChanged)
    Q_PROPERTY(int Temperature READ Temperature WRITE setTemperature NOTIFY TemperatureChanged)
    Q_PROPERTY(QString username READ username WRITE setUsername NOTIFY usernameChanged)
    Q_PROPERTY(QString dateTime READ dateTime WRITE setDateTime NOTIFY dateTimeChanged)
    Q_PROPERTY(QString fullyDate READ fullyDate WRITE setFullyDate NOTIFY fullyDateChanged)

public:
    explicit System(QObject *parent = nullptr);

    bool CarLocker() const;
    int Temperature() const;
    const QString &username() const;
    const QString &dateTime() const;
    const QString &fullyDate() const;

signals:
    void CarLockerChanged();
    void TemperatureChanged();
    void usernameChanged();
    void dateTimeChanged();
    void fullyDateChanged();

private:
    bool m_CarLocker;
    int m_Temperature;
    QString m_username;
    QString m_dateTime;
    QTimer *m_datetimeTime;
    QString m_fullyDate;
    QTimer *m_fullyDateDate;

public slots:
    void setDateTime(const QString &newDateTime);
    void setCarLocker(bool newCarLocker);
    void setTemperature(int newTemperature);
    void setUsername(const QString &newUsername);
    void setFullyDate(const QString &newFullyDate);
    void setdateTimeTime();
    void setfullyDateDate();
};

#endif // SYSTEM_H
