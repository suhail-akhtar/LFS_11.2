#!/bin/bash

#Header
cd $LFS/sources
tar xvf tar-1.34.tar.xz
cd tar-1.34
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr

make 

make check

make install
make -C doc install-html docdir=/usr/share/doc/tar-1.34


# Footer
cd $LFS/sources
rm -rf tar-1.34
echo "Done - tar-1.34.tar.xz"