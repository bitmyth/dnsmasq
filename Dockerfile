FROM alpine:edge

RUN apk update \
	&& apk --no-cache add dnsmasq \
	&& rm -rf /var/cache/apk/*

COPY resolv.conf /etc/resolv.conf

VOLUME /etc/dnsmasq

EXPOSE 53 53/udp

ENTRYPOINT ["dnsmasq", "-k"]
