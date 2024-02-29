# Info
Scripts to subscribe to ROS, parse data in Python, then visualize in Open3D following

# Important
PCDWrite.py currently does not work for real-time visualization. Use pcdwrite2.py for caching point cloud data during scan, then visualizing the resulting pcd file.

# Requirements
Works with ROS-Noetic, Ubuntu 20.04. See conda_env.yaml for dependencies.

# Getting started
cd into the pcdwrite root. To set up ROS connection:
```
mkdir src
catkin_make
source devel/setup.bash
```

Create the conda environment and activate:
```
conda env create -f conda_env.yaml
conda activate pcdwrite
```

Run script:
```python pcdwrite2.py```


