#!/bin/bash

#Header
cd $LFS/sources
tar xvf file-5.42.tar.gz
cd file-5.42
./configure --prefix=/usr

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf file-5.42
echo "Done - file-5.42.tar.gz"