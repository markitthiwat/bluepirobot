FROM ubuntu:18.04

RUN 
RUN pip install robotframework
RUN pip install robotframework-selenium2library

COPY *.robot usr/usr