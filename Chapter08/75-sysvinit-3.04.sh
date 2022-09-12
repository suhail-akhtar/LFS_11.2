#!/bin/bash

#Header
cd $LFS/sources
tar xvf sysvinit-3.04.tar.xz
cd sysvinit-3.04
patch -Np1 -i ../sysvinit-3.04-consolidated-1.patch

make 

make install


# Footer
cd $LFS/sources
rm -rf sysvinit-3.04
echo "Done - sysvinit-3.04.tar.xz"