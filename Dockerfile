FROM archlinux/base:latest
LABEL maintainer="marlock@etlgr.com"

# Updating base system
RUN pacman -Syu --noconfirm
# Installing deps
RUN pacman -S --noconfirm\
        make\
        cmake\
        gcc\
        glew\
        freeimage\
        lockfile-progs\
        openal\
        intel-tbb\
        crypto++\
        pugixml\
        libtheora\
        libvorbis\
        sdl2\
        lzo\
        libjpeg-turbo\
        git

COPY install.sh /
COPY build.sh /
RUN mkdir /game

VOLUME [ "/game" ]
CMD [ "/build.sh" ]
