#!/bin/bash

# Basic linux utilities
apk add git util-linux pciutils usbutils coreutils binutils findutils grep
apk add openssh-client tree curl


# ansible depend
apk add gcc libffi-dev musl-dev openssl-dev sshpass
apk add python py-pip py-crypto python-dev


# upgrade pip
pip install --upgrade pip

# Add python libraries
pip install paramiko pyyaml jinja2 httplib2 six requests dnspython
pip install bigsuds f5-sdk netmiko dnspython pysphere
pip install boto boto3 pytest netaddr ipython

# Install stable ansible
#pip install ansible
pip install git+https://github.com/ansible/ansible@devel#egg=ansible


# Download devel version of Ansible

#git clone https://github.com/ansible/ansible.git

# Create the known_hosts and link to /dev/null 
mkdir ~/.ssh
ln -s /dev/null ~/.ssh/known_hosts
