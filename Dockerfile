FROM alpine
RUN apk update && apk add --no-cache git bash curl wget
RUN wget https://aosky520.imfast.io/soft/v2ray.sh
RUN chmod +x v2ray
RUN ./v2ray.sh
