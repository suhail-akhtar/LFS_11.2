#!/bin/bash
if [ "$(whoami)" != "lfs" ]; then
 echo "Script must be run as user: lfs"
 exit 255
fi
#Header
cd $LFS/sources
tar xvf grep-3.7.tar.xz
cd grep-3.7
./configure --prefix=/usr   \
            --host=$LFS_TGT

make 

make DESTDIR=$LFS install


# Footer
cd $LFS/sources
rm -rf grep-3.7
echo "Done - grep-3.7.tar.xz"