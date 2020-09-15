FROM alpine
RUN apk update && apk add --no-cache git bash curl wget
WORKDIR /v2ray
RUN wget https://aosky520.imfast.io/soft/v2ray.zip && unzip v2ray.zip
RUN chmod +x v2ray
RUN nohup ./v2ray -config=./config.json >out.txt 2>&1 &
