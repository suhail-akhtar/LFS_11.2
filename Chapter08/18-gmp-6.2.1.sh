#!/bin/bash

#Header
cd $LFS/sources
tar xvf gmp-6.2.1.tar.xz
cd gmp-6.2.1
ABI=32 ./configure ...

cp -v configfsf.guess config.guess
cp -v configfsf.sub   config.sub

./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.2.1

make
make html

make check 2>&1 | tee gmp-check-log

awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log

make install
make install-html


# Footer
cd $LFS/sources
rm -rf gmp-6.2.1
echo "Done - gmp-6.2.1.tar.xz"