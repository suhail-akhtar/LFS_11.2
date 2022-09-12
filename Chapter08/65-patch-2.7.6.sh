#!/bin/bash

#Header
cd $LFS/sources
tar xvf patch-2.7.6.tar.xz
cd patch-2.7.6
./configure --prefix=/usr

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf patch-2.7.6
echo "Done - patch-2.7.6.tar.xz"