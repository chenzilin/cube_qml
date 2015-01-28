# QT Modules
QT += qml quick

# Target
TARGET = qml_cube
TEMPLATE = app

SOURCES += main.cpp

# Qml Files
QML_FOLDER = qml/content
OTHER_FILES += qml/main.qml \
	$$QML_FOLDER/*.qml \
	$$QML_FOLDER/qmldir

# Resources
RESOURCES += cube_qml.qrc

target.path = /opt/Qml_Cube
INSTALLS += target

# Objects Pathes
DESTDIR = bin
UI_DIR = build
MOC_DIR = build
RCC_DIR = build
OBJECTS_DIR = build
