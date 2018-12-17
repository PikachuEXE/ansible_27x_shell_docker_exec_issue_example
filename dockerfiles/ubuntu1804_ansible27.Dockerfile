FROM ubuntu:18.04

RUN \
  apt-get update \
  && \
  apt-get -y upgrade \
  && \
  apt-get install -y --no-install-recommends \
    software-properties-common \
    python-pip \
  && \
  pip -V

RUN \
  pip install -U \
    setuptools \
    wheel

RUN \
  pip install ansible==2.7.5 \
  && \
  ansible --version

RUN \
  mkdir -p /home/test/ansible

WORKDIR /home/test

ADD \
  ./ansible.cfg \
  /home/test/
ADD \
  ./ansible \
  /home/test/ansible

CMD ["ansible-playbook", "/home/test/ansible/playbooks/test.yml"]
