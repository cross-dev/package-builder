FROM crossdev/archlinux
MAINTAINER Roman Saveljev <roman.saveljev@haltian.com>

RUN \
    pacman -Syu --noconfirm sudo

RUN \
    useradd -m -s /bin/bash builder && \
    echo "builder ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/builder

USER builder
WORKDIR /home/builder
