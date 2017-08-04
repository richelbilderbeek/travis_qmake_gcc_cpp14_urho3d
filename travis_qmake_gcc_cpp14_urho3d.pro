SOURCES += \
    mastercontrol.cpp \
    inputmaster.cpp \
    cameramaster.cpp

HEADERS += \
    mastercontrol.h \
    inputmaster.h \
    cameramaster.h

# C++14
CONFIG += c++14
QMAKE_CXXFLAGS += -std=c++14

#QMAKE_CXXFLAGS += -O3
QMAKE_CXXFLAGS += -msse4.1
#URHO3D_SSE

# High warning level
QMAKE_CXXFLAGS += -Wall -Wextra -Werror

QMAKE_CXXFLAGS += -Wno-unused-variable

# Urho3D
INCLUDEPATH += \
    /usr/local/include/Urho3 \
    /usr/local/include/Urho3D/ThirdParty
    #../travis_qmake_gcc_cpp14_urho3d/Urho3D/include \
    #../travis_qmake_gcc_cpp14_urho3d/Urho3D/include/Urho3D/ThirdParty
    #../Urho3D/include \
    #../Urho3D/include/Urho3D/ThirdParty

LIBS += \
    /usr/local/lib/Urho3D/libUrho3D.a
    #../travis_qmake_gcc_cpp14_urho3d/Urho3D/lib/libUrho3D.a

LIBS += \
    -lpthread \
    -lSDL \
    -ldl \
    -lGL
