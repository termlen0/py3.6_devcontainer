FROM python:3.6.1-alpine


# Update the packages
RUN apk update &&\
    apk upgrade &&\ 
    apk add bash bash-doc bash-completion make tmux

COPY build/build.sh build.sh
COPY .aws /root/.aws
COPY .bashrc /root/.bashrc


RUN bash build.sh


ENTRYPOINT /bin/bash
