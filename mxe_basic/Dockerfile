# Base image
FROM ubuntu:24.04

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    ca-certificates \
    autoconf \
    automake \
    autopoint \
    bash \
    bison \
    bzip2 \
    flex \
    g++ \
    g++-multilib \
    gettext \
    git \
    gperf \
    intltool \
    libc6-dev-i386 \
    libgdk-pixbuf2.0-dev \
    libltdl-dev \
    libgl-dev \
    libpcre3-dev \
    libssl-dev \
    libtool-bin \
    libxml-parser-perl \
    lzip \
    make \
    openssl \
    p7zip-full \
    patch \
    perl \
    python3 \
    python3-mako \
    python3-packaging \
    python3-pkg-resources \
    python-is-python3 \
    ruby \
    sed \
    sqlite3 \
    unzip \
    wget \
    xz-utils \
    && rm -rf /var/lib/apt/lists/*

# Install MXE
WORKDIR /usr/src
RUN git clone https://github.com/mxe/mxe.git && cd mxe && git checkout cac2c6e842ed2bce55dc9fc3b39d0aaef4fd4fff
WORKDIR /usr/src/mxe

# Install MXE toolchain with gcc and SDL2
RUN make gcc

# Set environment variables for MXE
ENV PATH=/usr/src/mxe/usr/bin:$PATH

# Create a directory for source code and build
WORKDIR /src

# Default command
CMD ["bash"]

# Build instructions: 
# docker build -t mxe-sdl2 .
# To use the container:
# docker run -it --rm -v $(pwd):/src mxe-sdl2 bash
