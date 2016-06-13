mkdir /staging
cd /staging
git clone https://github.com/blockattack/blockattack-game.git
cd blockattack-game
./packdata.sh
cp source/misc/travis_help/utf8_v2_3_4/source/utf8.h source/code/
cp -r source/misc/travis_help/utf8_v2_3_4/source/utf8 source/code/
i686-w64-mingw32.static-cmake .
make
cd windows\ installer/
makensis install_script.nsi
