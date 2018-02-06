#! /bin/bash
set -euo pipefail
cd /staging
git clone git://github.com/OpenArena/engine.git
#cp /tmp/libxmp-4.3.13/lib/libxmp.a /staging/engine/code/libs/win32/
cd engine
VERSION_ID=$(git log -1 --date=short --format="openarena_engine_windows_%cd_%H")
echo $VERSION_ID
ZIPFILE="/data/${VERSION_ID}.zip"
if [ -e "$ZIPFILE" ]
then
 echo "$ZIPFILE exist -> UP TO DATE"
 exit 1
fi
STAGING_DIR=/staging/$VERSION_ID
mkdir $STAGING_DIR
#make
#mv /staging/engine/build/release-linux-x86_64/oa_ded.x86_64 $STAGING_DIR/
#mv /staging/engine/build/release-linux-x86_64/openarena.x86_64 $STAGING_DIR/
#mv /staging/engine/build/release-linux-x86_64/renderer_*_x86_64.so $STAGING_DIR/
#Windows version does not work at the moment
cd /staging/engine
PLATFORM=mingw32 ARCH=x86 CC=i686-w64-mingw32.static-gcc WINDRES=i686-w64-mingw32.static-windres LD=i686-w64-mingw32.static-ld PKG_CONFIG_PATH=/usr/lib/mxe/usr/i686-w64-mingw32.static/lib/pkgconfig/ make USE_CODEC_XMP=0 USE_CURL=1
mv /staging/engine/build/release-mingw32-x86/*.exe $STAGING_DIR/
cd /staging
zip -r $VERSION_ID $VERSION_ID
mv $VERSION_ID.zip /data/
