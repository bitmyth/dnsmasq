docker run --rm -v $(pwd)/resolv.conf:/etc/resolv.conf -v $(pwd)/dnsmasq.conf:/etc/dnsmasq.conf -d -p 53:53/tcp -p 53:53/udp --cap-add=NET_ADMIN --name dnsmasq bitmyth/dnsmasq
