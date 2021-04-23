FROM ubuntu:18.04

ENTRYPOINT []

RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip 
RUN pip3 install --no-cache rasa
RUN pip3 install --no-cache python-dotenv
RUN pip3 install --no-cache python-engineio==3.13.2
RUN pip3 install --no-cache python-socketio==4.6.1

ADD . /app/
RUN chmod +x /app/core_server.sh
CMD /app/core_server.sh