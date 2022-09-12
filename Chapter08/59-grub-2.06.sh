#!/bin/bash

#Header
cd $LFS/sources
tar xvf grub-2.06.tar.xz
cd grub-2.06
./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror

make 

make install
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions


# Footer
cd $LFS/sources
rm -rf grub-2.06
echo "Done - grub-2.06.tar.xz"