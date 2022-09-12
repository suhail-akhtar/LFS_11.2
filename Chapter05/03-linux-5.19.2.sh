#!/bin/bash
if [ "$(whoami)" != "lfs" ]; then
 echo "Script must be run as user: lfs"
 exit 255
fi
#Header
cd $LFS/sources
tar xvf linux-5.19.2.tar.xz
cd linux-5.19.2
make mrproper

make headers
find usr/include -type f ! -name '*.h' -delete


cp -rv usr/include $LFS/usr


# Footer
cd $LFS/sources
rm -rf linux-5.19.2
echo "Done - linux-5.19.2.tar.xz"