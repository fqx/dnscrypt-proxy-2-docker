This is a Docker image containing [DNSCrypt Proxy 2.x](https://github.com/jedisct1/dnscrypt-proxy). You can use this to set up a DNS server on your local network which resolves queries using DNSCrypt or DNS-over-HTTPS (DoH) rather than sending plaintext DNS queries over the Internet.

This image comes with a configuration which:

* Enables IPv6
* Looks up queries via DNS-over-HTTP to Google Public DNS (8.8.8.8) and Cloudflare DNS (1.1.1.1)
* Listens on all interfaces

You can run with this configuration:

`docker run -p 53:53/udp 654c9711/dnscrypt-proxy-2`

If you wish to override the configuration:

`docker run -p 53:53/udp  -v /path/to/dnscrypt-proxy.toml:/config/dnscrypt-proxy.toml 654c9711/dnscrypt-proxy-2`

