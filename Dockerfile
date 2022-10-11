FROM ppodgorsek/robot-framework

RUN apt update
RUN apt install bash py-pip firefox xvfb dbus chromium chromium-chromedriver
RUN pip install --upgrade pip
RUN pip install robotframework
RUN pip install robotframework-selenium2library

COPY *.robot /usr/robot

CMD ["robot testcase.robot"]

