FROM sago007/mxe_boost

RUN apt-get update && \
   apt-get install -y \
   docbook-to-man \
   libtool-bin \
   zip \
   nsis \
   python3-mako \
   python3-packaging \
   python3-setuptools


RUN make qt6 \
qt6-conf	\
qt6-qt5compat	\
qt6-qtbase	\
qt6-qtcharts	\
qt6-qtdeclarative	\
qt6-qthttpserver	\
qt6-qtimageformats	\
qt6-qtmultimedia	\
qt6-qtquicktimeline	\
qt6-qtscxml	\
qt6-qtserialbus	\
qt6-qtserialport	\
qt6-qtservice	\
qt6-qtshadertools	\
qt6-qtsvg	\
qt6-qttools	\
qt6-qttranslations \
gettext