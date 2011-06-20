
cd src
patch -Np1 -i ../zlib-1.2.5-ldflags.patch
patch -Np1 -i ../zlib-1.2.5-lfs-decls.patch
./configure
make
make test
