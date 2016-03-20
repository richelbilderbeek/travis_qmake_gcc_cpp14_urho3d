#!/bin/bash
./Urho3d.sh
qmake travis_qmake_gcc_cpp14_urho3d.pro
make
