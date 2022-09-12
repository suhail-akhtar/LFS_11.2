#!/bin/bash

#Header
cd $LFS/sources
tar xvf mpfr-4.1.0.tar.xz
cd mpfr-4.1.0
./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.1.0

make
make html

make check

make install
make install-html


# Footer
cd $LFS/sources
rm -rf mpfr-4.1.0
echo "Done - mpfr-4.1.0.tar.xz"