#!/bin/bash

#Header
cd $LFS/sources
tar xvf psmisc-23.5.tar.xz
cd psmisc-23.5
./configure --prefix=/usr

make 

make install


# Footer
cd $LFS/sources
rm -rf psmisc-23.5
echo "Done - psmisc-23.5.tar.xz"