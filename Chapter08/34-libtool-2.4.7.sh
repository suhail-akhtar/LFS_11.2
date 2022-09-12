#!/bin/bash

#Header
cd $LFS/sources
tar xvf libtool-2.4.7.tar.xz
cd libtool-2.4.7
./configure --prefix=/usr

make 

make check

make install

rm -fv /usr/lib/libltdl.a


# Footer
cd $LFS/sources
rm -rf libtool-2.4.7
echo "Done - libtool-2.4.7.tar.xz"