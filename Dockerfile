FROM python:3.6.4

RUN pip install --upgrade databricks-cli

WORKDIR /root