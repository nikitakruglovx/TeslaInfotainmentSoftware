#include "system.h"
#include <QDateTime>

System::System(QObject *parent)
    : QObject(parent)
    , m_CarLocker(true)
    , m_Temperature(12)
    , m_username("Nikita")
    , m_dateTime("00:00 pm")
    , m_fullyDate("1 September")
{

    m_datetimeTime = new QTimer(this);
    m_datetimeTime->setInterval(500);
    m_datetimeTime->setSingleShot(true);
    connect(m_datetimeTime, &QTimer::timeout, this, &System::setdateTimeTime);
    setdateTimeTime();

    m_fullyDateDate = new QTimer(this);
    m_fullyDateDate->setInterval(10000);
    m_fullyDateDate->setSingleShot(true);
    connect(m_fullyDateDate, &QTimer::timeout, this, &System::setfullyDateDate);
    setfullyDateDate();

}

bool System::CarLocker() const
{
    return m_CarLocker;
}

void System::setCarLocker(bool newCarLocker)
{
    if (m_CarLocker == newCarLocker)
        return;
    m_CarLocker = newCarLocker;
    emit CarLockerChanged();
}

int System::Temperature() const
{
    return m_Temperature;
}

void System::setTemperature(int newTemperature)
{
    if (m_Temperature == newTemperature)
        return;
    m_Temperature = newTemperature;
    emit TemperatureChanged();
}

const QString &System::username() const
{
    return m_username;
}

void System::setUsername(const QString &newUsername)
{
    if (m_username == newUsername)
        return;
    m_username = newUsername;
    emit usernameChanged();
}

void System::setdateTimeTime()
{
    QString dateTime = QDateTime::currentDateTime().toString("hh:mm");
    setDateTime(dateTime);
    m_datetimeTime->start();

}

void System::setfullyDateDate()
{
    QString fullyDate = QDateTime::currentDateTime().toString("dddd, MMMM d, yyyy");
    setFullyDate(fullyDate);
    m_fullyDateDate->start();
}

const QString &System::dateTime() const
{
    return m_dateTime;
}

void System::setDateTime(const QString &newDateTime)
{
    if (m_dateTime == newDateTime)
        return;
    m_dateTime = newDateTime;
    emit dateTimeChanged();
}

const QString &System::fullyDate() const
{
    return m_fullyDate;
}

void System::setFullyDate(const QString &newFullyDate)
{
    if (m_fullyDate == newFullyDate)
        return;
    m_fullyDate = newFullyDate;
    emit fullyDateChanged();
}
