FROM izone/freecad:nvidia-jessie
MAINTAINER Leonardo Loures <luvres@hotmail.com>

RUN \
    cd && \
    apt-get update && \
    apt-get install -y \
        r-base \
        r-base-dev \
        gdebi \
        libxslt1.1 \
  \
    && RSTUDIO_VERSION=1.0.153 \
    && curl https://download1.rstudio.org/rstudio-${RSTUDIO_VERSION}-amd64.deb -o rstudio.deb \
  \
    && gdebi -n rstudio.deb \
    && rm rstudio.deb \
  \
    && apt-get clean \
    && rm /var/lib/apt/lists/* \
          /usr/share/doc/* \
          /usr/share/locale/* \
          /usr/share/man/* \
          /usr/share/info/* -fR

WORKDIR /root
