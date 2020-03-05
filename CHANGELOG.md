# v0.1.2 (March 5, 2020)
#### BUGFIXES
- set default avertise_addr to ansible default ipv4 address
- removed bind_addr default override (will now use "0.0.0.0")


# v0.1.1 (March 5, 2020)
#### BUGFIXES
- dnsmasq - added package 'resolvconf' to interact with systemd-resolve (debian)
- dnsmasq - changed default address from 'consul-bind' to '127.0.0.1'


# v0.1.0 (February 19, 2020)
#### INFO
- Complete rewrite to enable streaming yaml -> json for config
