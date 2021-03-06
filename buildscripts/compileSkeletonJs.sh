#!/bin/bash

dir=`pwd`

# set up the build directory
mkdir -p build
cd build

mkdir -p js
cd js

mkdir -p root
mkdir -p libskeleton
cd libskeleton
  
# finally, run configuration script
emconfigure ../../../libskeleton/configure \
	--prefix="$dir/build/js/root" \
	PKG_CONFIG_PATH="$dir/build/js/root/lib/pkgconfig"

# compile libskeleton
emmake make -j4
emmake make install

cd ..
cd ..
cd ..
