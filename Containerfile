FROM        ghcr.io/ublue-os/arch-distrobox

LABEL       com.github.containers.toolbox="true" \
            usage="This image is used for vscodium" \
            summary="vscodium preinstalled on an arch linux docker image" \
            maintainer="dnkmmr"

RUN	pacman -Syu --noconfirm
RUN         pacman -S go gopls python npm ninja cmake pyenv buildah meson --noconfirm

RUN         useradd -m --shell=/bin/bash build && usermod -L build && \
            echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
            echo "root ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER        build
WORKDIR     /home/build

RUN	paru -Syu --noconfirm
RUN	paru -S nvm patchelf --noconfirm
RUN	paru -S vscodium-bin --noconfirm

USER 	root
WORKDIR     /
