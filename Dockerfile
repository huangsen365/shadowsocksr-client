FROM alpine:3.6

ENV SERVER_ADDR     0.0.0.0
ENV SERVER_PORT     51348
ENV PASSWORD        psw
ENV METHOD          aes-128-ctr
ENV PROTOCOL        auth_aes128_md5
ENV PROTOCOLPARAM   32
ENV OBFS            tls1.2_ticket_auth_compatible
ENV TIMEOUT         300
ENV DNS_ADDR        8.8.8.8
ENV DNS_ADDR_2      8.8.4.4
ENV BIND_ADDR       0.0.0.0
ENV BIND_PORT       7071
ENV SSR_SERVER_ADDR 127.0.0.1
ENV SSR_SERVER_PORT 8389



ARG BRANCH=manyuser
ARG WORK=~


RUN apk --no-cache add python \
    libsodium \
    wget


RUN mkdir -p $WORK && \
    wget -qO- --no-check-certificate https://github.com/huangsen365/shadowsocksr/archive/$BRANCH.tar.gz | tar -xzf - -C $WORK


WORKDIR $WORK/shadowsocksr-$BRANCH/shadowsocks


EXPOSE $BIND_PORT
CMD python local.py -b $BIND_ADDR -l $BIND_PORT -s $SSR_SERVER_ADDR -p $SSR_SERVER_PORT -k $PASSWORD -m $METHOD -o $PROTOCOL -O $PROTOCOL -G $PROTOCOLPARAM
