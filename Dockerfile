# Version: 0.1.0-head
FROM terinjokes/npmjs
MAINTAINER Terin Stock <terinjokes@gmail.com>

ENV HOME /root

CMD ["/sbin/my_init"]

ADD build /build/docker-npmjs-delegate

RUN /build/docker-npmjs-delegate/prepare.sh
RUN /build/docker-npmjs-delegate/install_kappa.sh

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
