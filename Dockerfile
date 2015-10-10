FROM crossdev/archlinux
MAINTAINER Roman Saveljev <roman.saveljev@haltian.com>

RUN \
    pacman -Syu --noconfirm sudo git binutils patch base-devel
    
# Need passwordless sudo for `makepkg -s`
RUN \
    useradd -m -s /bin/bash builder && \
    echo "builder ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/builder

# This is to make sure source signature verification will succeed
RUN \
    chgrp -R builder /etc/pacman.d/gnupg && \
    ln -s /etc/pacman.d/gnupg /home/builder/.gnupg
