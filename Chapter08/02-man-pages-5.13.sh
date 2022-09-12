#!/bin/bash

#Header
cd $LFS/sources
tar xvf man-pages-5.13.tar.xz
cd man-pages-5.13
make prefix=/usr install


# Footer
cd $LFS/sources
rm -rf man-pages-5.13
echo "Done - man-pages-5.13.tar.xz"