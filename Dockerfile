FROM ubuntu:18.04
ENTRYPOINT []
RUN apt-get update && apt-get install -y python3 python3-pip 
RUN pip3 install --no-cache --upgrade pip 
RUN pip3 install --no-cache rasa==2.5.0

# Install project dependencies
# COPY ./requirements.txt .

# RUN pip install --upgrade pip
RUN pip install python-dotenv
RUN pip install python-engineio==3.13.2
RUN pip install python-socketio==4.6.1

COPY . .
RUN chmod +x /app/core_server.sh
CMD /app/core_server.sh