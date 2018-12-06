FROM debian:stretch as builder

ENV NGINX_VERSION=1.13.12

# Install prerequisites for Nginx compile
WORKDIR /tmp
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        wget \
        git \
        tar \
        libpcre++-dev \
        libssl-dev \
        zlib1g-dev

# Download Nginx and module sources
RUN wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz -O nginx.tar.gz && \
    mkdir /tmp/nginx && \
    tar -xzvf nginx.tar.gz -C /tmp/nginx --strip-components=1 && \
    git clone https://github.com/apcera/nginx-statsd /tmp/nginx/nginx-statsd

# Build modules
WORKDIR /tmp/nginx
RUN ./configure \
        --with-compat \
        --add-dynamic-module=/tmp/nginx/nginx-statsd \
    && make modules

WORKDIR /tmp/nginx
FROM nginx:latest
COPY --from=builder /tmp/nginx/objs/ngx_http_statsd_module.so /usr/lib/nginx/modules

# vim: ft=dockerfile :
