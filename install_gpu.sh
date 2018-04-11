#!/bin/bash -e

# NVIDIA driver
add-apt-repository -y ppa:graphics-drivers/ppa

apt update && apt install nvidia-384 nvidia-384-dev

# test
nvidia-smi

# cuda9 preparation
apt-get install g++ freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev

# install gcc 6
apt install gcc-6
apt install g++-6
ln -s /usr/bin/gcc-6 /usr/local/cuda/bin/gcc
ln -s /usr/bin/g++-6 /usr/local/cuda/bin/g++

# download and install CUDA-9
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run
chmod +x cuda_9.0.176_384.81_linux.run 
./cuda_9.0.176_384.81_linux.run --override

rm cuda_9.0.176_384.81_linux.run

echo "Add the following line to your .bashc"
echo "LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
