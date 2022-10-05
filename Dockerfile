FROM ubuntu:focal-20220922@sha256:9488eba63bece0e05cd2cd84ce4dbe2710c8666f10259bbb9ebe55c4ff4f5704

RUN dpkg --add-architecture armhf && apt-get update

RUN DEBIAN_FRONTEND=noninteractive TZ=US/Central \
    apt-get install -y gcc-10 g++-10 \
    cmake libgl-dev libvulkan-dev libpulse-dev libx11-dev \
    libxft-dev libxcursor-dev libxext-dev libxfixes-dev libxi-dev \
    libxinerama-dev libxrandr-dev libxxf86vm-dev libfreetype6-dev \
    libfontconfig1-dev ccache libgl-dev:armhf libvulkan-dev:armhf \
    libpulse-dev:armhf libx11-dev:armhf libxft-dev:armhf \
    libxcursor-dev:armhf libxext-dev:armhf libxfixes-dev:armhf \
    libxi-dev:armhf libxinerama-dev:armhf libxrandr-dev:armhf \
    libxxf86vm-dev:armhf libfreetype6-dev:armhf \
    libfontconfig1-dev:armhf gcc-10-arm-linux-gnueabihf \
    g++-10-arm-linux-gnueabihf 
