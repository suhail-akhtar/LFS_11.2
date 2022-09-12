#!/bin/bash

#Header
cd $LFS/sources
tar xvf bc-6.0.1.tar.xz
cd bc-6.0.1
CC=gcc ./configure --prefix=/usr -G -O3 -r

make 

make test

make install


# Footer
cd $LFS/sources
rm -rf bc-6.0.1
echo "Done - bc-6.0.1.tar.xz"