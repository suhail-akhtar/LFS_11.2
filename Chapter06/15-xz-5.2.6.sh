#!/bin/bash
if [ "$(whoami)" != "lfs" ]; then
 echo "Script must be run as user: lfs"
 exit 255
fi
#Header
cd $LFS/sources
tar xvf xz-5.2.6.tar.xz
cd xz-5.2.6
./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.2.6

make 

make DESTDIR=$LFS install

rm -v $LFS/usr/lib/liblzma.la


# Footer
cd $LFS/sources
rm -rf xz-5.2.6
echo "Done - xz-5.2.6.tar.xz"