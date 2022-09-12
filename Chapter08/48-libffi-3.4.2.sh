#!/bin/bash

#Header
cd $LFS/sources
tar xvf libffi-3.4.2.tar.gz
cd libffi-3.4.2
./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native \
            --disable-exec-static-tramp

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf libffi-3.4.2
echo "Done - libffi-3.4.2.tar.gz"