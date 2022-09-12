#!/bin/bash

#Header
cd $LFS/sources
tar xvf wheel-0.37.1.tar.gz
cd wheel-0.37.1
pip3 install --no-index $PWD


# Footer
cd $LFS/sources
rm -rf wheel-0.37.1
echo "Done - wheel-0.37.1.tar.gz"