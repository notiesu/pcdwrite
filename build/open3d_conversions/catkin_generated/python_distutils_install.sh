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

echo_and_run cd "/home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/src/open3d_conversions"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/install/lib/python3/dist-packages:/home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build" \
    "/usr/bin/python3" \
    "/home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/src/open3d_conversions/setup.py" \
    egg_info --egg-base /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build/open3d_conversions \
    build --build-base "/home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build/open3d_conversions" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/install" --install-scripts="/home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/install/bin"
