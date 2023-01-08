cmake_minimum_required(VERSION 3.0.2)
project(lar_gazebo)

find_package(catkin REQUIRED COMPONENTS)

catkin_package()

# Mark other files for installation (e.g. launch and bag files, etc.)
install(
  DIRECTORY launch maps models worlds
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

if (CATKIN_ENABLE_TESTING)
  find_package(roslaunch REQUIRED)
  roslaunch_add_file_check(launch/hector_slam.launch)
  roslaunch_add_file_check(launch/lar_husky.launch)
  roslaunch_add_file_check(launch/lar_world.launch)
endif()
