FROM ubuntu:20.04

RUN apt-get update && apt-get install -y --no-install-recommends \
        libwebsockets15 \
        libxml2 \
        libcurl4 \
        libjson-c4 \
        libglib2.0-0 \
        libsqlite3-0 \
        dbus-x11
        
RUN apt-get autoremove -y; apt-get clean; rm -rf /var/lib/apt/lists/*; rm /var/log/alternatives.log /var/log/apt/*; rm /var/log/* -r;

COPY alarm_config /alarm_config
COPY manufacturer /manufacturer
COPY xml_messages /xml_messages
COPY protocol_manager /
COPY alarm_manager /
COPY database_manager /

#ENV product_id="00:1D:94:11:22:33"

ADD ./init_script.sh /init_script.sh

ENTRYPOINT ["/init_script.sh"]
