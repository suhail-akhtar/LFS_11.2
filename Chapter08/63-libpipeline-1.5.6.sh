#!/bin/bash

#Header
cd $LFS/sources
tar xvf libpipeline-1.5.6.tar.gz
cd libpipeline-1.5.6
./configure --prefix=/usr

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf libpipeline-1.5.6
echo "Done - libpipeline-1.5.6.tar.gz"