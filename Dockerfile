FROM python:3.8-slim

# Install project dependencies
COPY ./requirements.txt .

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN chmod +x /app/core_server.sh
CMD /app/core_server.sh