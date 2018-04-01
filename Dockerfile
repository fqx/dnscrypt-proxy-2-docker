FROM ubuntu:xenial

RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/jedisct1/dnscrypt-proxy/releases/download/2.0.8/dnscrypt-proxy-linux_x86_64-2.0.8.tar.gz
RUN tar -xvzf dnscrypt-proxy-linux_x86_64-2.0.8.tar.gz
RUN rm dnscrypt-proxy-linux_x86_64-2.0.8.tar.gz

CMD ["linux-x86_64/dnscrypt-proxy", "-config", "/config/dnscrypt-proxy.toml"]
