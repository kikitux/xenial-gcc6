#!/usr/bin/env bash

# curl -sSL https://raw.githubusercontent.com/kikitux/xenial-gcc6/master/gcc-6_ubuntu.sh | bash

which gcc-6 g++-6 gfortran-6 || {                                                                                                                                                                                                         
  sudo apt-get install -y software-properties-common                                                                                                                                                                     
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
} && {
  sudo apt-get update
  sudo apt-get install --only-upgrade -y gcc-6 g++-6 gfortran-6
}
