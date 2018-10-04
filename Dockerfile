FROM centos:7.4.1708

MAINTAINER Andy Cobaugh <andrew.cobaugh@gmail.com>

ENV cfversion 3.10.0
ENV cfrelease 1

RUN yum update -y --noplugins
RUN curl https://cfengine-package-repos.s3.amazonaws.com/community_binaries/Community-${cfversion}/agent_rhel6_x86_64/cfengine-community-${cfversion}-${cfrelease}.el6.x86_64.rpm -o cfengine.rpm && rpm -ivh cfengine.rpm
