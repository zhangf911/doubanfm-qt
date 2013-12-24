#-------------------------------------------------
#
# Project created by QtCreator 2013-08-21T21:55:51
#
#-------------------------------------------------

QT       += core gui network multimedia xml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = doubanfm-qt
macx:TARGET = DoubanFM-Qt
TEMPLATE = app

# Don't open it if you are using Ubuntu
DEFINES += WITH_SYSTEM_TRAY_ICON

SOURCES += main.cpp\
        mainwidget.cpp \
    channelwidget.cpp \
    controlpanel.cpp \
    libs/doubanfm.cpp \
    horizontalslider.cpp \
    volumetimepanel.cpp \
    pausemask.cpp \
    libs/qlyricparser.cpp \
    libs/lyricgetter.cpp \
    lyricwidget.cpp \
    albumimage.cpp \
    triggerarea.cpp \
    albumwidget.cpp \
    libs/doubanplayer.cpp \
    settingdialog.cpp

HEADERS  += mainwidget.h \
    channelwidget.h \
    controlpanel.h \
    libs/douban_types.h \
    libs/doubanfm.h \
    horizontalslider.h \
    volumetimepanel.h \
    pausemask.h \
    libs/qlyricparser.h \
    libs/lyricgetter.h \
    lyricwidget.h \
    albumimage.h \
    triggerarea.h \
    channelwidgettrigger.h \
    albumwidget.h \
    libs/doubanplayer.h \
    settingdialog.h

!win32:!macx {
    QT += dbus
    DEFINES += LINUX WITH_MPRIS_PLUGIN

    SOURCES +=  plugins/mpris/mprisplayeradapter.cpp \
                plugins/mpris/mprisadapter.cpp \
                plugins/mpris/doubanmprisplugin.cpp

    HEADERS +=  plugins/mpris/mprisplayeradapter.h \
                plugins/mpris/mprisadapter.h \
                plugins/mpris/doubanmprisplugin.h

    OTHER_FILES += \
        plugins/org.mpris.MediaPlayer2.xml \
        plugins/org.mpris.MediaPlayer2.Player.xml \
        plugins/org.freedesktop.DBus.Properties.xml
}

FORMS    += mainwidget.ui \
    channelwidget.ui \
    controlpanel.ui \
    volumetimepanel.ui \
    pausemask.ui \
    lyricwidget.ui \
    albumwidget.ui \
    settingdialog.ui

RESOURCES += \
    imgs.qrc

CONFIG += c++11
