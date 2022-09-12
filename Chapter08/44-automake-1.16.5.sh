#!/bin/bash

#Header
cd $LFS/sources
tar xvf automake-1.16.5.tar.xz
cd automake-1.16.5
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.5

make 

make -j4 check

make install


# Footer
cd $LFS/sources
rm -rf automake-1.16.5
echo "Done - automake-1.16.5.tar.xz"