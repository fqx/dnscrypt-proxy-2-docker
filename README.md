This is a Docker image containing [DNSCrypt Proxy 2.x](https://github.com/jedisct1/dnscrypt-proxy). You can use this to set up a DNS server on your local network which resolves queries using DNSCrypt or DNS-over-HTTPS (DoH) rather than sending plaintext DNS queries over the Internet.

You can run with this configuration:

`docker run -p 53:53/udp  -v /path/to/dnscrypt-proxy.toml:/config bltfqx/dnscrypt-proxy-2`

