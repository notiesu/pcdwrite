execute_process(COMMAND "/home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build/open3d_conversions/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build/open3d_conversions/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
