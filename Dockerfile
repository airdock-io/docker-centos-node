# VERSION 1.0
# AUTHOR:         Jerome Guibert <jguibert@gmail.com>
# DESCRIPTION:    Node.js on centos6
# TO_BUILD:       docker build --rm -t airdock/docker-centos-node .
# SOURCE:         https://github.com/airdock/docker-centos-node
FROM centos:centos6

# Enable EPEL for Node.js, install Node.js, npm and git
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm && \
    yum -y update && \
    yum install -y npm git && \
    yum clean all && \
    mkdir -p /srv/node

WORKDIR /srv/node

# Expose Node.js default port
EXPOSE 3000

# Bundle app source
# Child image must put their source under /srv/node
ONBUILD COPY . /srv/node
ONBUILD RUN npm install

# DEFAULT command
CMD ["node", "/srv/node/bin/www"]
