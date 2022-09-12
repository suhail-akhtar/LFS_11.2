#!/bin/bash

#Header
cd $LFS/sources
tar xvf bison-3.8.2.tar.xz
cd bison-3.8.2
./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.8.2

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf bison-3.8.2
echo "Done - bison-3.8.2.tar.xz"