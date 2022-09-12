#!/bin/bash

#Header
cd $LFS/sources
tar xvf gperf-3.1.tar.gz
cd gperf-3.1
./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1

make 

make -j1 check

make install


# Footer
cd $LFS/sources
rm -rf gperf-3.1
echo "Done - gperf-3.1.tar.gz"