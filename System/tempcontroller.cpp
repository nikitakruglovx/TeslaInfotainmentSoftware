#include "tempcontroller.h"

TempController::TempController(QObject *parent)
    : QObject(parent)
    , m_targetTemp( 10 )
{

}

int TempController::targetTemp() const
{
    return m_targetTemp;
}

void TempController::incrementTargetTemp(const int &value)
{
    int incrTemp = m_targetTemp + value;
    setTargetTemp( incrTemp );
}

void TempController::setTargetTemp(int newTargetTemp)
{
    if (m_targetTemp == newTargetTemp)
        return;
    m_targetTemp = newTargetTemp;
    emit targetTempChanged();
}
