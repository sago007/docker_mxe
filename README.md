# docker_mxe
Cross compiling images

This is images with a complete MXE environment. 
Designed for crosscompiling Windows binaries with as little hassle as possible.

## Building

```
docker build . -f mxe_basic/Dockerfile -t sago007/mxe_basic
docker build . -f mxe_boost/Dockerfile -t sago007/mxe_boost
docker build . -f mxe_blockattack/Dockerfile -t sago007/docker_blockattack
```
