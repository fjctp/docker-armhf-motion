FROM armv7/armhf-ubuntu
MAINTAINER snchan20@yahoo.com

RUN apt-get -qq update && \
    apt-get install -qy autoconf automake build-essential pkgconf \
                        libtool libzip-dev git libjpeg62 libjpeg62-dev \
                        libavformat-dev libavcodec-dev libavutil-dev libswscale-dev && \
    apt-get autoremove && apt-get clean && \
    rm -fr /tmp/* /var/tmp/* /var/lib/apt/lists/*
    
RUN git clone https://github.com/Motion-Project/motion.git && \
    cd motion && \
    autoreconf -fiv && \
    ./configure && \
    make -j3 && \
    make install && \
    rm -rf /motion

COPY motion.conf /motion.conf
ENTRYPOINT ["motion", "-c", "/motion.conf"]