FROM alpine:3.7

WORKDIR /app

# Install system libraries
RUN apt-get update && apt-get install -y python3 python3-pip

# Install project dependencies
COPY ./requirements.txt .

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY . .
RUN chmod +x /app/core_server.sh
CMD /app/core_server.sh