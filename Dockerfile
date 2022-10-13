FROM ubuntu:18.04


# Set temp work directory
# for package configuration
WORKDIR /usr/src/cache

# Update apt packages
RUN apt update
RUN apt upgrade -y

# Install vim
RUN apt install vim -y

# Install python 3.7
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.10 -y

# Make python 3.7 the default
RUN echo "alias python=python3.7" >> ~/.bashrc
RUN export PATH=${PATH}:/usr/bin/python3.10
RUN /bin/bash -c "source ~/.bashrc"

# Install pip
RUN apt install python3-pip -y
RUN python -m pip install --upgrade pip

# Install lsof
RUN apt install lsof

# Install ta-lib
# Source: https://medium.com/@artiya4u/installing-ta-lib-on-ubuntu-944d8ca24eae
RUN apt install build-essential wget -y
RUN wget https://artiya4u.keybase.pub/TA-lib/ta-lib-0.4.0-src.tar.gz
RUN tar -xvf ta-lib-0.4.0-src.tar.gz
RUN /bin/bash -c "cd ta-lib/; ./configure --prefix=/usr; make; make install"

# Install pip packages
#COPY requirements.txt ./
RUN pip install -r requirements.txt

# Set working directory for code
WORKDIR /usr/src/app

RUN pip install robotframework
RUN pip install robotframework-selenium2library

COPY *.robot usr/usr