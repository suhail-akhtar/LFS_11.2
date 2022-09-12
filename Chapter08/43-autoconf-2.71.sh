#!/bin/bash

#Header
cd $LFS/sources
tar xvf autoconf-2.71.tar.xz
cd autoconf-2.71
./configure --prefix=/usr

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf autoconf-2.71
echo "Done - autoconf-2.71.tar.xz"