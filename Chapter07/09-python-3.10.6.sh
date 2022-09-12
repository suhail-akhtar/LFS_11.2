#!/bin/bash

#Header
cd $LFS/sources
tar xvf Python-3.10.6.tar.xz
cd Python-3.10.6
./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip

make 

make install


# Footer
cd $LFS/sources
rm -rf Python-3.10.6
echo "Done - Python-3.10.6.tar.xz"