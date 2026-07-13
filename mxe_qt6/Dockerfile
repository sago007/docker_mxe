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


#RUN make qt6
RUN make qt6-conf
RUN make qt6-qt5compat
RUN make qt6-qtbase
RUN make qt6-qtcharts
RUN make qt6-qtdeclarative
RUN make qt6-qthttpserver
RUN make qt6-qtimageformats
#RUN make qt6-qtmultimedia
RUN make qt6-qtquicktimeline
RUN make qt6-qtscxml
RUN make qt6-qtserialbus
RUN make qt6-qtserialport
RUN make qt6-qtservice
RUN make qt6-qtshadertools
RUN make qt6-qtsvg
RUN make qt6-qttools
RUN make qt6-qttranslations
RUN make gettext
RUN make exiv2 libiconv