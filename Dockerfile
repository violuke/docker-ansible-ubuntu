FROM ubuntu:16.04

MAINTAINER Luke Cousins

RUN apt-get update -y && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common
  
RUN apt-add-repository -y ppa:ansible/ansible

RUN apt-get update -y && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y \
  software-properties-common \
  ansible=2.2.0.0-1 \
  python-netaddr \
  whois \
  rsync
