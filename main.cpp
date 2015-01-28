#include <QDebug>
#include <QTimer>
#include <QQuickView>
#include <QQmlEngine>
#include <QQmlContext>
#include <QGuiApplication>
#include <QCommandLineParser>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);

	QQuickView viewer;
	viewer.setSource(QUrl("qrc:///qml/qml/main.qml"));
	viewer.show();

	return app.exec();
}
