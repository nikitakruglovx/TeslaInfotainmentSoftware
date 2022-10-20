#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSslSocket>
#include <QDebug>
#include <QQmlContext>
#include "System/system.h"
#include "System/tempcontroller.h"

int main(int argc, char *argv[])
{

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

#endif
    QGuiApplication app(argc, argv);

    System m_systemHandler;
    TempController m_targethandler;

    QQmlApplicationEngine engine;

    const QUrl url(QStringLiteral("qrc:/main.qml"));

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &app, [url](QObject *obj, const QUrl &objUrl)
    {
        if (!obj && url == objUrl) QCoreApplication::exit(-1);
    }
    , Qt::QueuedConnection);
    engine.load(url);

    QQmlContext * context( engine.rootContext() );
    context->setContextProperty("systemHandler", &m_systemHandler);
    context->setContextProperty("targetTempHadnler", &m_targethandler);
    return app.exec();
}
