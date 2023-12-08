FROM        ghcr.io/dnkmmr69420/enhanced-arch:latest

LABEL       com.github.containers.toolbox="true" \
            usage="This image is used for vscodium" \
            summary="vscodium preinstalled on an arch linux docker image" \
            maintainer="dnkmm"

RUN	      pacman -Syu --noconfirm
RUN         pacman -S go gopls python --noconfirm

RUN   	useradd -m --shell=/bin/bash yay && usermod -L yay && \
      	echo "yay ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
      	echo "root ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER	      yay
WORKDIR	/home/yay

RUN		yay -Syu --noconfirm
RUN		yay -S vscodium-bin --noconfirm

USER 	      root
WORKDIR     /
