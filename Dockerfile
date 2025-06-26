FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y git g++ make && \
    git clone https://github.com/microsoft/pict.git /opt/pict && \
    cd /opt/pict && make pict && \
    cp pict /usr/local/bin/ && \
    chmod +x /usr/local/bin/pict && \
    apt-get remove -y git make g++ && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /opt/pict

ENTRYPOINT ["pict"]
