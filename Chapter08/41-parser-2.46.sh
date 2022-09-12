#!/bin/bash

#Header

perl Makefile.PL

make 

make test

make install



# Footer
echo "Done - {0}"