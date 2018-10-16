FROM sago007/mxe_boost

RUN apt-get update && \
   apt-get install -y mxe-i686-w64-mingw32.static-sdl2 \
   mxe-i686-w64-mingw32.static-sdl2-image \
   mxe-i686-w64-mingw32.static-sdl2-mixer \
   mxe-i686-w64-mingw32.static-sdl2-ttf \
   mxe-i686-w64-mingw32.static-sdl2-gfx \
   mxe-i686-w64-mingw32.static-box2d \
   docbook-to-man \
   mxe-i686-w64-mingw32.static-boost \
   mxe-i686-w64-mingw32.static-physfs \
   mxe-i686-w64-mingw32.static-jsoncpp \
   libtool \
   mxe-i686-w64-mingw32.static-gettext \
   mxe-i686-w64-mingw32.static-freetype \
   mxe-i686-w64-mingw32.static-zlib \
   zip
COPY build_it.sh /
