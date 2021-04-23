FROM python:3.8-slim

WORKDIR /app


RUN apt-get update && \
    python -m pip install --no-cache --upgrade pip \ 
    && pip install --no-cache rasa==2.5.0 \
    && pip install --no-cache python-engineio==3.13.2 \
    && pip install --no-cache python-socketio==4.6.1 --use-feature=2020-resolver

COPY . .
RUN chmod +x /app/core_server.sh
CMD /app/core_server.sh