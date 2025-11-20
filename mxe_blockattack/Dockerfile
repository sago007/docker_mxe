FROM sago007/mxe_boost

RUN apt-get update && \
   apt-get install -y \
   docbook-to-man \
   libtool \
   zip \
   nsis

RUN make cmake sdl2 sdl2_mixer sdl2_image sdl2_ttf physfs jsoncpp gettext freetype zlib


COPY build_it.sh /
