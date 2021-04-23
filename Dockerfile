FROM ubuntu:18.04

ENTRYPOINT []

RUN apt-get update && apt-get install -y python3 python3-pip && \
    python3 -m pip install --no-cache --upgrade pip \ 
    && pip3 install --no-cache rasa==2.5.0 

ADD . /app/
RUN chmod +x /app/core_server.sh
CMD /app/core_server.sh