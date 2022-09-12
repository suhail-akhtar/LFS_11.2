#!/bin/bash

#Header
cd $LFS/sources
tar xvf xz-5.2.6.tar.xz
cd xz-5.2.6
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.2.6

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf xz-5.2.6
echo "Done - xz-5.2.6.tar.xz"