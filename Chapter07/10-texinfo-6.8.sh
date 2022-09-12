#!/bin/bash

#Header
cd $LFS/sources
tar xvf texinfo-6.8.tar.xz
cd texinfo-6.8
./configure --prefix=/usr

make 

make install


# Footer
cd $LFS/sources
rm -rf texinfo-6.8
echo "Done - texinfo-6.8.tar.xz"