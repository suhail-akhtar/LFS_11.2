#!/bin/bash

#Header
cd $LFS/sources
tar xvf m4-1.4.19.tar.xz
cd m4-1.4.19
./configure --prefix=/usr

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf m4-1.4.19
echo "Done - m4-1.4.19.tar.xz"