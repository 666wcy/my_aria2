FROM ubuntu


COPY root /
COPY upload /upload/
RUN apt-get update
RUN apt-get install sudo
RUN sudo apt-get update
RUN apt-get install aria2


RUN sudo chmod 777 /rclone
RUN mv /rclone /usr/bin/

RUN sudo chmod 777 /start.sh
CMD bash start.sh