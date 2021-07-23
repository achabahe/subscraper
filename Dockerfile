
FROM python:3.9

WORKDIR /app

COPY . .
RUN apt update
RUN apt install -y vim procps net-tools
RUN pip install -r requirements.txt
RUN python setup.py install
