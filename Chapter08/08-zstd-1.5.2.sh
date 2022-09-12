#!/bin/bash

#Header
cd $LFS/sources
tar xvf zstd-1.5.2.tar.gz
cd zstd-1.5.2
patch -Np1 -i ../zstd-1.5.2-upstream_fixes-1.patch

make prefix=/usr

make check

make prefix=/usr install

rm -v /usr/lib/libzstd.a


# Footer
cd $LFS/sources
rm -rf zstd-1.5.2
echo "Done - zstd-1.5.2.tar.gz"