mkdir /staging
cd /staging
git clone https://github.com/sago007/saland.git
cd saland
cp extra/travis_help/utf8_v2_3_4/source/utf8.h src/sago/
cp -r extra/travis_help/utf8_v2_3_4/source/utf8 src/sago/
i686-w64-mingw32.static-cmake .
make
