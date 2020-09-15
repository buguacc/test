FROM centos
RUN apt update && apt install bash wget
RUN wget https://aosky520.imfast.io/soft/v2ray.sh
RUN chmod +x v2ray
RUN ./v2ray.sh
