FROM ubuntu:16.04

MAINTAINER Luke Cousins

RUN apt-get update -y && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
  software-properties-common \
  ansible

RUN apt-add-repository -y ppa:ansible/ansible

RUN apt-get update -y && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
  software-properties-common \
  ansible \
  python-netaddr \
  whois
