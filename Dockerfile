FROM            debian/jessie

RUN echo "deb http://inverse.ca/debian-v3 jessie jessie" > /etc/apt/sources.list.d/inverse.list && \
    apt-key adv --keyserver keys.gnupg.net --recv-key 0x810273C4 && \
    apt-get update && \
    apt-get install -y --no-install-recommends sogo sope4.9-gdl1-postgresql && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

