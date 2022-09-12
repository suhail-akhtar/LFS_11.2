#!/bin/bash
if [ "$(whoami)" != "lfs" ]; then
 echo "Script must be run as user: lfs"
 exit 255
fi
#Header
cd $LFS/sources
tar xvf gzip-1.12.tar.xz
cd gzip-1.12
./configure --prefix=/usr --host=$LFS_TGT

make 

make DESTDIR=$LFS install


# Footer
cd $LFS/sources
rm -rf gzip-1.12
echo "Done - gzip-1.12.tar.xz"