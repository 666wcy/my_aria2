FROM ubuntu




RUN apt-get update
RUN apt-get install sudo
RUN sudo apt-get update
RUN apt-get install aria2 -y

RUN mkdir /root/.aria2
COPY config /root/.aria2/

COPY root /
RUN sudo chmod 777 /root/.aria2/
RUN sudo chmod 777 /rclone
RUN mv /rclone /usr/bin/

RUN sudo chmod 777 /start.sh
CMD bash start.sh