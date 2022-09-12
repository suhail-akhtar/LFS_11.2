#!/bin/bash
if [ "$(whoami)" != "lfs" ]; then
 echo "Script must be run as user: lfs"
 exit 255
fi
#Header
cd $LFS/sources
tar xvf binutils-2.39.tar.xz
cd binutils-2.39
mkdir -v build
cd       build

../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --enable-gprofng=no \
             --disable-werror

make 

make install


# Footer
cd $LFS/sources
rm -rf binutils-2.39
echo "Done - binutils-2.39.tar.xz"