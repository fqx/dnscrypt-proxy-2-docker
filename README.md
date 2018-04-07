This image comes with a configuration which:

* Enables IPv6
* Looks up queries via DNS-over-HTTP to Google Public DNS (8.8.8.8) and Cloudflare DNS (1.1.1.1)
* Listens on all interfaces

You can run with this configuration:

`docker run -p 53:53/udp 654c9711/dnscrypt-proxy-2`

If you wish to override the configuration:

`docker run -p 53:53/udp  -v /path/to/dnscrypt-proxy.toml:/config/dnscrypt-proxy.toml 654c9711/dnscrypt-proxy-2`

