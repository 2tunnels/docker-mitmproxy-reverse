FROM python:3

RUN apt-get update

RUN pip install mitmproxy

ENTRYPOINT mitmdump -p 8080 --mode reverse:${REVERSE}
