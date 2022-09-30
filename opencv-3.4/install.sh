#!/bin/bash

sudo apt-get install build-essential libvtk5-dev  
 
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev  
 
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev  
 
sudo apt-get install build-essential qt5-default ccache libv4l-dev libavresample-dev  libgphoto2-dev libopenblas-base libopenblas-dev doxygen  openjdk-8-jdk pylint libvtk6-dev
 
sudo apt-get install pkg-config



mkdir build
cd build


cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH= ../opencv_contrib-3.4.12/modules/ -D BUILD_TIFF=ON ..


sudo make -j20
sudo make install

sudo ldconfig -v 

