FROM alpine:3.11

RUN apk add --no-cache \
            libc6-compat \
            libstdc++ \
            json-c \
            libwebsockets-dev \
            libxml2-dev
            
COPY manufacturer /home/manufacturer
COPY xml_messages /home/xml_messages
COPY protocol_manager /home/

ENV product_id="11:22:33:44:55:77"

ADD ./init_script.sh /home/init_script.sh

RUN /home/init_script.sh

