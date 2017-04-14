FROM ubuntu:latest

MAINTAINER Karol Kornatka

RUN apt-get update &&\
    apt-get install samba -y &&\
    apt-get autoremove -y

COPY smb.conf /etc/samba/smb.conf 

EXPOSE 137 138 139 445
ENTRYPOINT  ["/usr/sbin/smbd", "-FS"]
