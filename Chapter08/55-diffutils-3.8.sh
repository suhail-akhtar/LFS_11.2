#!/bin/bash

#Header
cd $LFS/sources
tar xvf diffutils-3.8.tar.xz
cd diffutils-3.8
./configure --prefix=/usr

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf diffutils-3.8
echo "Done - diffutils-3.8.tar.xz"