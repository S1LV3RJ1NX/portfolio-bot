FROM ubuntu:18.04

ENTRYPOINT []
RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip && pip3 install --no-cache rasa==2.5.0 --use-feature=2020-resolver
RUN pip3 install python-dotenv
RUN pip3 install python-engineio==3.13.2
RUN pip3 install python-socketio==4.6.1

ADD . /app/
RUN chmod +x /app/core_services.sh
CMD /app/core_services.sh
