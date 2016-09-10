#!/bin/bash

which gcc-6 g++-6 gfortran-6 || {                                                                                                                                                                                                         
  sudo apt-get install -y software-properties-common lsb_release                                                                                                                                                                          
  sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test                                                                                                                                                                                  
  sudo apt-get update                                                                                                                                                                                                                     
  sudo apt-get install -y gcc-6 g++-6 gfortran-6                                                                                                                                                                                          
  sudo update-alternatives --remove-all gcc                                                                                                                                                                                               
  sudo update-alternatives --remove-all g++                                                                                                                                                                                               
  sudo update-alternatives --remove-all gfortran                                                                                                                                                                                          
  sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 20                                                                                                                                                                   
  sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 20                                                                                                                                                                   
  sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-6 20                                                                                                                                                    
  sudo update-alternatives --config gcc                                                                                                                                                                                                   
  sudo update-alternatives --config g++                                                                                                                                                                                                   
  sudo update-alternatives --config gfortran                                                                                                                                                                                              
}
