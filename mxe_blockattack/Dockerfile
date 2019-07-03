FROM sago007/mxe_boost

RUN apt-get update && \
   apt-get install -y mxe-i686-w64-mingw32.static-sdl2 \
   mxe-i686-w64-mingw32.static-sdl2-image \
   mxe-i686-w64-mingw32.static-sdl2-mixer \
   mxe-i686-w64-mingw32.static-sdl2-ttf \
   docbook-to-man \
   mxe-i686-w64-mingw32.static-boost \
   mxe-i686-w64-mingw32.static-physfs \
   mxe-i686-w64-mingw32.static-jsoncpp \
   libtool \
   mxe-i686-w64-mingw32.static-gettext \
   mxe-i686-w64-mingw32.static-freetype \
   mxe-i686-w64-mingw32.static-zlib \
   zip

RUN mkdir -p /staging/deps && cd /staging/deps && curl http://icculus.org/physfs/downloads/physfs-3.0.2.tar.bz2 | tar -jx && cd physfs-3.0.2 && ls -lrt \
&& cd /staging/deps/physfs-3.0.2 \
&& i686-w64-mingw32.static-cmake . -DPHYSFS_BUILD_STATIC=TRUE \
        -DPHYSFS_BUILD_SHARED=FALSE \
        -DPHYSFS_INTERNAL_ZLIB=FALSE \
        -DPHYSFS_BUILD_TEST=FALSE \
-DPHYSFS_BUILD_WX_TEST=FALSE && make && make install

COPY build_it.sh /
