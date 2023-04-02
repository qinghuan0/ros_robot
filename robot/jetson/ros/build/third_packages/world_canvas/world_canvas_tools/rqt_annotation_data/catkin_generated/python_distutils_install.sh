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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_tools/rqt_annotation_data"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/install/lib/python3/dist-packages:/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build" \
    "/usr/bin/python3" \
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_tools/rqt_annotation_data/setup.py" \
     \
    build --build-base "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/world_canvas/world_canvas_tools/rqt_annotation_data" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/install" --install-scripts="/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/install/bin"
