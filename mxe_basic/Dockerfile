FROM debian:9
RUN apt-get update && apt-get install -y gnupg
#Use http://mirror.mxe.cc/
#First add the repository and install the static gcc compiler. This ensures that everything basic is setup.
RUN echo "deb http://mirror.mxe.cc/repos/apt stretch main" > \
   /etc/apt/sources.list.d/mxeapt.list && \
   apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 86B72ED9 && \
   apt-get update && \
   apt-get install -y mxe-i686-w64-mingw32.static-gcc \
   nsis \
   zip \
   libtool
#All packages!
#RUN apt-get update && wget -O - http://mirror.mxe.cc/repos/apt/debian/dists/jessie/main/binary-amd64/Packages | grep Package | awk '{print $2}' | xargs apt-get install -y

#Set the path
env PATH /usr/lib/mxe/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
