FROM sago007/mxe_basic
#All packages!
RUN apt-get update && wget -O - http://mirror.mxe.cc/repos/apt/dists/stretch/main/binary-amd64/Packages | grep Package | grep boost | awk '{print $2}' | xargs apt-get install -y
