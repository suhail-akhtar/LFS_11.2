#!/bin/bash

#Header
cd $LFS/sources
tar xvf grep-3.7.tar.xz
cd grep-3.7
./configure --prefix=/usr

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf grep-3.7
echo "Done - grep-3.7.tar.xz"