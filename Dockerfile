FROM jenkins/jenkins
USER root

RUN apt-get update && apt-get install -y build-essential gcc-multilib g++-multilib
RUN mkdir /valve
CD /valve
RUN wget http://media.steampowered.com/client/runtime/steam-runtime-sdk_latest.tar.xz
RUN tar xvf steam-runtime-sdk_latest.tar.xz
RUN mv steam-runtime-sdk_2013-09-05 steam-runtime
RUN chown jenkins:jenkins * -R

USER jenkins