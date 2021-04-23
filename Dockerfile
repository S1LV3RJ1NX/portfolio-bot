FROM ubuntu:18.04
ENTRYPOINT []

ENV LC_ALL='C.UTF-8' LANG='C.UTF-8'
RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip
RUN pip3 install --no-cache rasa==2.5.0
ENV LC_ALL='C.UTF-8' LANG='C.UTF-8'
RUN pip3 install spacy
RUN python3 -m spacy download en_core_web_md
RUN pip3 install python-dotenv
RUN pip3 install python-engineio==3.13.2
RUN pip3 install python-socketio==4.6.1

ADD . /app/
RUN chmod +x /app/core_server.sh
CMD /app/core_server.sh