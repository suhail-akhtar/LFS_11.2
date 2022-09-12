#!/bin/bash
if [ "$(whoami)" != "lfs" ]; then
 echo "Script must be run as user: lfs"
 exit 255
fi
#Header
cd $LFS/sources
tar xvf diffutils-3.8.tar.xz
cd diffutils-3.8
./configure --prefix=/usr --host=$LFS_TGT

make 

make DESTDIR=$LFS install


# Footer
cd $LFS/sources
rm -rf diffutils-3.8
echo "Done - diffutils-3.8.tar.xz"