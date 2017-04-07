FROM ubuntu:latest

MAINTAINER Karol Kornatka



RUN apt-get update &&\
    apt-get install samba -y &&\
    apt-get autoremove -y

COPY smb.conf /etc/samba/smb.conf 

EXPOSE 138/udp
EXPOSE 139
EXPOSE 445
EXPOSE 445/udp

ENTRYPOINT ["/bin/bash"]
