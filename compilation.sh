
cd src
patch -Np1 -i ../zlib-1.2.5-ldflags.patch
patch -Np1 -i ../zlib-1.2.5-lfs-decls.patch
export CFLAGS="-fPIC"
./configure
make
make test

for f in .; do
    git checkout -- $f
done

cd ..
