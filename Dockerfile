FROM alpine:3.11

RUN apk add --no-cache \
            libc6-compat \
            libstdc++ \
            json-c \
            libwebsockets-dev \
            libxml2-dev
            
COPY manufacturer /manufacturer
COPY xml_messages /xml_messages
COPY protocol_manager /

ENV product_id="11:22:33:44:55:00"

ADD ./init_script.sh /init_script.sh

RUN /init_script.sh

#WORKDIR /home
ENTRYPOINT ["./protocol_manager"]
