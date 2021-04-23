FROM python:3.8-slim

ENTRYPOINT []

RUN apt-get update && apt-get install -y python3 python3-pip && \
    python3 -m pip install --no-cache --upgrade pip \ 
    && pip3 install --no-cache rasa==2.5.0 \
    && pip3 install --no-cache python-engineio==3.13.2 \
    && pip3 install --no-cache python-socketio==4.6.1 --use-feature=2020-resolver

ADD . /app/
RUN chmod +x /app/core_server.sh
CMD /app/core_server.sh