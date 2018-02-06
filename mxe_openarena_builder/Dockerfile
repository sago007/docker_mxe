FROM sago007/mxe_basic
MAINTAINER poul@poulsander.com
RUN apt-get update && apt-get install -y mxe-i686-w64-mingw32.static-vorbis mxe-i686-w64-mingw32.static-sdl2 mxe-i686-w64-mingw32.static-sdl2 mxe-i686-w64-mingw32.static-openal zip

RUN adduser --disabled-password --gecos "OpenArena user" openarena && \
  mkdir -p /data && chmod 777 /data && \
  mkdir -p /staging && chmod 777 /staging

VOLUME ["/data"]

COPY engine_compile_script.sh /opt/

ADD https://github.com/cmatsuoka/libxmp/archive/libxmp-4.4.1.tar.gz /tmp/libxmp-4.4.1.tar.gz

RUN chmod 666 /tmp/libxmp-4.4.1.tar.gz

#This does not create a correct static library. We likely need to generate a new configure file that supports cross compiling static libraries or libxmp needs a fix.
RUN cd /tmp && tar -xzf  libxmp-4.4.1.tar.gz && cd libxmp-libxmp-4.4.1 && autoconf && ./configure --host=i686-w64-mingw32.static --enable-static --disable-shared && make BUILDING_STATIC=1 && \
cp /tmp/libxmp-libxmp-4.4.1/lib/libxmp.a /usr/lib/mxe/usr/i686-w64-mingw32.static/lib/ && cp /tmp/libxmp-libxmp-4.4.1/include/xmp.h /usr/lib/mxe/usr/i686-w64-mingw32.static/include/

USER openarena
