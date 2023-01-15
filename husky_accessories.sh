#!/bin/bash
# Source this file to for husky gazebo env variables (starting from husky 0.4.9
# Review husky_description/urdf/husky.urdf.xacro for related env vars.
set -a

# IMU Link
# HUSKY_IMU_XYZ=     # default: 0.19 0 0.149
# HUSKY_IMU_RPY=     # default: 0 -1.5708 3.1416
# HUSKY_IMU_PARENT=  # default: base_link

# LMS1XX Laser Primary and Secondary
HUSKY_LMS1XX_ENABLED=1 # default: 0
# HUSKY_LMS1XX_TOPIC=   # default: front/scan
# HUSKY_LMS1XX_TOWER=   # default: 1
# HUSKY_LMS1XX_PREFIX=  # default: front
# HUSKY_LMS1XX_PARENT=  # default: top_plate_link
# HUSKY_LMS1XX_XYZ=     # default: 0.2206 0.0 0.00635
# HUSKY_LMS1XX_RPY=     # default: 0.0 0.0 0.0

# HUSKY_LMS1XX_SECONDARY_ENABLED=  # default: 0
# HUSKY_LMS1XX_SECONDARY_TOPIC=    # default: rear/scan
# HUSKY_LMS1XX_SECONDARY_TOWER=    # default: 1
# HUSKY_LMS1XX_SECONDARY_PREFIX=   # default: rear
# HUSKY_LMS1XX_SECONDARY_PARENT=   # default: top_plate_link
# HUSKY_LMS1XX_SECONDARY_XYZ=      # default: -0.2206 0.0 0.00635
# HUSKY_LMS1XX_SECONDARY_RPY=      # default: 0.0 0.0 3.14159

# UST10 Laser Primary  and Secondary
# HUSKY_UST10_ENABLED=  # default: 0
# HUSKY_UST10_TOPIC=    # default: front/scan
# HUSKY_UST10_PREFIX=   # default: front
# HUSKY_UST10_PARENT=   # default: top_plate_link
# HUSKY_UST10_XYZ=      # default: 0.2206 0.0 0.00635
# HUSKY_UST10_RPY=      # default: 0 0 0

# HUSKY_UST10_SECONDARY_ENABLED=  # default: 0
# HUSKY_UST10_SECONDARY_TOPIC=    # default: rear/scan
# HUSKY_UST10_SECONDARY_PREFIX=   # default: rear
# HUSKY_UST10_SECONDARY_PARENT=   # default: top_plate_link
# HUSKY_UST10_SECONDARY_XYZ=      # default: -0.2206 0.0 0.00635
# HUSKY_UST10_SECONDARY_RPY=      # default: 0 0 3.14159

# Velodyne LiDAR Primary and Secondary
# HUSKY_LASER_3D_ENABLED=  # default: 0
# HUSKY_LASER_3D_TOPIC=    # default: points
# HUSKY_LASER_3D_TOWER=    # default: 1
# HUSKY_LASER_3D_PREFIX=   # default: 
# HUSKY_LASER_3D_PARENT=   # default: top_plate_link
# HUSKY_LASER_3D_XYZ=      # default: 0 0 0
# HUSKY_LASER_3D_RPY=      # default: 0 0 0

# HUSKY_LASER_3D_SECONDARY_ENABLED=  # default: 0
# HUSKY_LASER_3D_SECONDARY_TOPIC=    # default: secondary_points
# HUSKY_LASER_3D_SECONDARY_TOWER=    # default: 1
# HUSKY_LASER_3D_SECONDARY_PREFIX=   # default: secondary_
# HUSKY_LASER_3D_SECONDARY_PARENT=   # default: top_plate_link
# HUSKY_LASER_3D_SECONDARY_XYZ=      # default: 0 0 0
# HUSKY_LASER_3D_SECONDARY_RPY=      # default: 0 0 -3.14159

# Realsense Camera Primary and Secondary
HUSKY_REALSENSE_ENABLED=1  # default: 0
# HUSKY_REALSENSE_TOPIC=    # default: realsense
# HUSKY_REALSENSE_PREFIX=   # default: camera
HUSKY_REALSENSE_PARENT=top_plate_front_link   # default: top_plate_link
# HUSKY_REALSENSE_XYZ=      # default: 0 0 0
# HUSKY_REALSENSE_RPY=      # default: 0 0 0

# HUSKY_REALSENSE_SECONDARY_ENABLED=  # default: 0
# HUSKY_REALSENSE_SECONDARY_TOPIC=    # default: realsense_secondary
# HUSKY_REALSENSE_SECONDARY_PREFIX=   # default: camera_secondary
# HUSKY_REALSENSE_SECONDARY_PARENT=   # default: top_plate_link
# HUSKY_REALSENSE_SECONDARY_XYZ=      # default: 0 0 0
# HUSKY_REALSENSE_SECONDARY_RPY=      # default: 0 0 0

# BlackflyS Camera Primary and Secondary
# HUSKY_BLACKFLY=                #default: 0
# HUSKY_BLACKFLY_MOUNT_ENABLED=  #default: 1
# HUSKY_BLACKFLY_MOUNT_ANGLE=    #default: 0
# HUSKY_BLACKFLY_PREFIX=         #default: blackfly
# HUSKY_BLACKFLY_PARENT=         #default: top_plate_link
# HUSKY_BLACKFLY_XYZ=            #default: 0 0 0
# HUSKY_BLACKFLY_RPY=            #default: 0 0 0

# HUSKY_BLACKFLY_SECONDARY=                # default: 0
# HUSKY_BLACKFLY_SECONDARY_MOUNT_ENABLED=  # default: 1
# HUSKY_BLACKFLY_SECONDARY_MOUNT_ANGLE=    # default: 0
# HUSKY_BLACKFLY_SECONDARY_PREFIX=         # default: blackfly_secondary
# HUSKY_BLACKFLY_SECONDARY_PARENT=         # default: top_plate_link
# HUSKY_BLACKFLY_SECONDARY_XYZ=            # default: 0 0 0
# HUSKY_BLACKFLY_SECONDARY_RPY=            # default: 0 0 0

# Bumper Extension
# HUSKY_FRONT_BUMPER_EXTEND=   # default: 0
# HUSKY_REAR_BUMPER_EXTEND=    # default: 0

# Height of the sensor arch in mm.  Must be either 510 or 300
# HUSKY_SENSOR_ARCH=                # default: 0
# HUSKY_SENSOR_ARCH_HEIGHT=         # default: 510
# HUSKY_SENSOR_ARCH_OFFSET=         # default: 0 0 0
# HUSKY_SENSOR_ARCH_RPY=            # default: 0 0 0

# Extras
# ROBOT_NAMESPACE=     # /
HUSKY_URDF_EXTRAS=$(rospack find lar_gazebo)'/husky_urdf_extras/gazebo_ground_truth.urdf'   # empty.urdf
# CPR_URDF_EXTRAS=     # empty.urdf

set +a
