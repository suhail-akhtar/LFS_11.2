#!/bin/bash

#Header
cd $LFS/sources
tar xvf binutils-2.39.tar.xz
cd binutils-2.39
expect -c "spawn ls"

mkdir -v build
cd       build

../configure --prefix=/usr       \
             --sysconfdir=/etc   \
             --enable-gold       \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --with-system-zlib

make tooldir=/usr

make -k check

make tooldir=/usr install

rm -fv /usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes}.a


# Footer
cd $LFS/sources
rm -rf binutils-2.39
echo "Done - binutils-2.39.tar.xz"