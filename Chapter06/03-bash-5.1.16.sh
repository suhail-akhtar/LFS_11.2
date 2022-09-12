#!/bin/bash
if [ "$(whoami)" != "lfs" ]; then
 echo "Script must be run as user: lfs"
 exit 255
fi
#Header
cd $LFS/sources
tar xvf bash-5.1.16.tar.gz
cd bash-5.1.16
./configure --prefix=/usr                   \
            --build=$(support/config.guess) \
            --host=$LFS_TGT                 \
            --without-bash-malloc

make 

make DESTDIR=$LFS install

ln -sv bash $LFS/bin/sh


# Footer
cd $LFS/sources
rm -rf bash-5.1.16
echo "Done - bash-5.1.16.tar.gz"