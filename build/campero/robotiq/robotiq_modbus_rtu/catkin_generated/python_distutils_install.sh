#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/pc-campero2/campero_ws/src/campero/robotiq/robotiq_modbus_rtu"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/pc-campero2/campero_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/pc-campero2/campero_ws/install/lib/python2.7/dist-packages:/home/pc-campero2/campero_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pc-campero2/campero_ws/build" \
    "/usr/bin/python2" \
    "/home/pc-campero2/campero_ws/src/campero/robotiq/robotiq_modbus_rtu/setup.py" \
    build --build-base "/home/pc-campero2/campero_ws/build/campero/robotiq/robotiq_modbus_rtu" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/pc-campero2/campero_ws/install" --install-scripts="/home/pc-campero2/campero_ws/install/bin"
