#!/bin/bash

#Header
cd $LFS/sources
tar xvf gzip-1.12.tar.xz
cd gzip-1.12
./configure --prefix=/usr

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf gzip-1.12
echo "Done - gzip-1.12.tar.xz"