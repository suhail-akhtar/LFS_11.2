#!/bin/bash

#Header
cd $LFS/sources
tar xvf kmod-30.tar.xz
cd kmod-30
./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --with-openssl         \
            --with-xz              \
            --with-zstd            \
            --with-zlib

make 

make install

for target in depmod insmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod /usr/sbin/$target
done

ln -sfv kmod /usr/bin/lsmod


# Footer
cd $LFS/sources
rm -rf kmod-30
echo "Done - kmod-30.tar.xz"