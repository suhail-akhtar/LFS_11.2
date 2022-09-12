#!/bin/bash

#Header

rm -rf /usr/share/{info,man,doc}/*

find /usr/{lib,libexec} -name \*.la -delete

rm -rf /tools

exit

umount $LFS/dev/pts
umount $LFS/{sys,proc,run,dev}

cd $LFS
tar -cJpf $HOME/lfs-temp-tools-11.2.tar.xz .



# Footer
echo "Done - {0}"