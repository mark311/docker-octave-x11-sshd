FROM openmicroscopy/octave:latest
MAINTAINER markta31@gmail.com

USER root
WORKDIR /root
RUN apt-get update && apt-get -y install openssh-server
RUN echo "octave:octave" | chpasswd

USER octave
WORKDIR /home/octave
VOLUME ["/source"]
ENTRYPOINT ["octave"]
