
# lar_gazebo

Repository of the **3D model** of the Robotics Laboratory (*LAR*) of UFBA to be used in the [Gazebo](http://gazebosim.org/).

![3d model of LaR in gazebo](https://drive.google.com/uc?export=view&id=1uXXjb6ia2QoiZ3wRi_qFUjFoO-EgZ79l)

## Installation

Use *git* to clone this repository to you workspace:

```{bash}
git clone https://github.com/ericksuzart/lar_gazebo.git
```

Then, build your workspace:

```{bash}
catkin build
```

> **_NOTE:_** you should use catkin tools to work propely with this package. Checkout [catkin tools](https://catkin-tools.readthedocs.io/en/latest/index.html) documentation.

## Launching

### The model

Use the command below in your terminal to setup and launch gazebo with all models of LAR:

```{bash}
roslaunch lar_gazebo lar_world.launch
```

### With [Husky](http://wiki.ros.org/Robots/Husky)

You can do it by typing in your terminal:

```{bash}
roslaunch lar_gazebo lar_husky.launch
```

> You must install the husky packages of simulation in your machine to perform the command above. Checkout [Simulating Husky](http://wiki.ros.org/husky_gazebo/Tutorials/Simulating%20Husky) documentation to installation tutorial.

### Disable shadows

If you open through the launchers, it's open automatically with shadows disabled.

Else, you have to disable directly on Gazebo GUI:

1. With gazebo open, go to left panel and find *Scene*, in world tab;
2. Click on the *Scene*;
3. Now search for *shadows*;
4. And, finally uncheck the square right after *shadows*;

> **_NOTE:_** If you've getting lost visit the [tutorial](http://gazebosim.org/tutorials?cat=guided_b&tut=guided_b2) of *gazebo GUI* (Graphical User Interface).

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

### Editing the [lar.world](worlds/lar.world)

When we launch the simulation, the integration between Gazebo and ROS points out the correct path to the folder that stores the models used in the .world file. However, you must inform the Gazebo system where find the models used in the simulation to open the world without ROS. Therefore, execute the following command on the terminal used to open Gazebo (without ROS):

```console
export GAZEBO_MODEL_PATH=$(rospack find lar_gazebo)'/models'
```

> **Note:** You must have installed and configured before the lar_gazebo package for the command `rospack find lar_gazebo` to work properly, 

If you do not want to run the command every time, put it in your `~/.bashrc`

## License

[BSD](https://opensource.org/licenses/BSD-2-Clause)
