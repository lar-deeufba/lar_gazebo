import os
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import (
    DeclareLaunchArgument,
    IncludeLaunchDescription,
    AppendEnvironmentVariable,
)
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import LaunchConfiguration


def generate_launch_description():
    pkg_clearpath_gz = get_package_share_directory("clearpath_gz")
    pkg_lar_gazebo = get_package_share_directory("lar_gazebo")

    default_setup_path = os.path.join(pkg_lar_gazebo, "config")

    setup_path_arg = DeclareLaunchArgument(
        "setup_path",
        default_value=default_setup_path,
        description="Path to clearpath configuration (robot.yaml)",
    )

    use_sim_time_arg = DeclareLaunchArgument(
        "use_sim_time",
        default_value="true",
        description="Use simulation (Gazebo) clock",
    )

    models_path = os.path.join(pkg_lar_gazebo, "models")
    worlds_path = os.path.join(pkg_lar_gazebo, "worlds")
    world_file_path = os.path.join(worlds_path, "lar")
    print(f"Using world file: {world_file_path}")

    clearpath_sim = IncludeLaunchDescription(
        PythonLaunchDescriptionSource(
            os.path.join(pkg_clearpath_gz, "launch", "simulation.launch.py")
        ),
        launch_arguments={
            "setup_path": LaunchConfiguration("setup_path"),
            "use_sim_time": LaunchConfiguration("use_sim_time"),
            "world": world_file_path,
        }.items(),
    )

    return LaunchDescription(
        [
            setup_path_arg,
            use_sim_time_arg,
            AppendEnvironmentVariable("IGN_GAZEBO_RESOURCE_PATH", models_path),
            AppendEnvironmentVariable("IGN_GAZEBO_RESOURCE_PATH", worlds_path),
            AppendEnvironmentVariable("GZ_SIM_RESOURCE_PATH", models_path),
            AppendEnvironmentVariable("GZ_SIM_RESOURCE_PATH", worlds_path),
            clearpath_sim,
        ]
    )
