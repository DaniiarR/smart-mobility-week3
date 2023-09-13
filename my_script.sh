#!/bin/bash

# This is a simple script to test if ROS Foxy is properly installed and working.

# Check if ROS Foxy environment variables are set
if [ -z "$ROS_DISTRO" ]; then
  echo "ROS Foxy environment variables are not set. Please make sure ROS Foxy is installed and sourced."
  exit 1
else
  echo "ROS Foxy environment variables are set. ROS Foxy is installed and sourced."
fi

# Test if basic ROS command works
if ! ros2 --help &>/dev/null; then
  echo "Basic ROS 2 command 'ros2' is not working."
  exit 1
else
  echo "Basic ROS 2 command 'ros2' is working."
fi

# Test if a sample ROS 2 node works (you can replace 'demo_nodes_cpp' with any ROS package)
if ! ros2 run demo_nodes_cpp talker &>/dev/null; then
  echo "The 'talker' node failed to run. Check your ROS installation or try installing 'ros-foxy-demo-nodes-cpp'."
  exit 1
else
  echo "The 'talker' node ran successfully."
fi

echo "ROS Foxy appears to be installed and working properly."

