FROM alpine
RUN apk update && apk add --no-cache git bash curl wget
RUN wget https://aosky520.imfast.io/soft/v2ray.zip && unzip v2ray.zip
RUN cd v2ray
RUN chmod +x v2ray v2ctl
# 开始后台运行
RUN nohup ./v2ray -config=./config.json >out.txt 2>&1 &
