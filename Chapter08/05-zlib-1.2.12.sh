#!/bin/bash

#Header
cd $LFS/sources
tar xvf zlib-1.2.12.tar.xz
cd zlib-1.2.12
./configure --prefix=/usr

make 

make check

make install

rm -fv /usr/lib/libz.a


# Footer
cd $LFS/sources
rm -rf zlib-1.2.12
echo "Done - zlib-1.2.12.tar.xz"