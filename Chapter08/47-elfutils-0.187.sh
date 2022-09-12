#!/bin/bash

#Header
cd $LFS/sources
tar xvf elfutils-0.187.tar.bz2
cd elfutils-0.187
./configure --prefix=/usr                \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy

make 

make check

make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /usr/lib/libelf.a


# Footer
cd $LFS/sources
rm -rf elfutils-0.187
echo "Done - elfutils-0.187.tar.bz2"