#!/bin/bash
if [ "$(whoami)" != "lfs" ]; then
 echo "Script must be run as user: lfs"
 exit 255
fi
#Header
cd $LFS/sources
tar xvf sed-4.8.tar.xz
cd sed-4.8
./configure --prefix=/usr   \
            --host=$LFS_TGT

make 

make DESTDIR=$LFS install


# Footer
cd $LFS/sources
rm -rf sed-4.8
echo "Done - sed-4.8.tar.xz"