#!/bin/bash
if [ "$(whoami)" != "lfs" ]; then
 echo "Script must be run as user: lfs"
 exit 255
fi
#Header
cd $LFS/sources
tar xvf patch-2.7.6.tar.xz
cd patch-2.7.6
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make 

make DESTDIR=$LFS install


# Footer
cd $LFS/sources
rm -rf patch-2.7.6
echo "Done - patch-2.7.6.tar.xz"