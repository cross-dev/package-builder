FROM crossdev/archlinux
MAINTAINER Roman Saveljev <roman.saveljev@haltian.com>

RUN \
    pacman -Syu --noconfirm sudo git binutils patch base-devel

RUN \
    useradd -m -s /bin/bash builder && \
    echo "builder ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/builder
#    sudo -u builder gpg --list-keys && \
#    echo "keyserver hkp://keys.gnupg.net" >>/home/builder/.gnupg/gpg.conf && \
#    echo "keyring /etc/pacman.d/gnupg/pubring.gpg" >>/home/builder/.gnupg/gpg.conf && \
#    echo "keyserver-options auto-key-retrieve" >>/home/builder/.gnupg/gpg.conf

#USER builder
#WORKDIR /home/builder

#RUN \
#    sudo dirmngr </dev/null && \
#    sudo touch /etc/pacman.d/gnupg/ldapservers.conf && \
#    sudo pacman-key --recv-keys 6645B0A8C7005E78DB1D7864F99FFE0FEAE999BD && \
#    sudo nohup dirmngr --daemon --homedir /etc/pacman.d/gnupg && \
#RUN \
#    git clone git://github.com/experiment-orange/pacman.git && \
#    cd pacman && \
#    makepkg -s --noconfirm --skippgpcheck

#ENTRYPOINT ["/usr/bin/sudo", "-u", "builder", "-s"]
#CMD ["/bin/bash"]
