FROM centos:7.5.1804

MAINTAINER Andy Cobaugh <andrew.cobaugh@gmail.com>

RUN yum update -y --noplugins
RUN curl https://cfengine-package-repos.s3.amazonaws.com/community_binaries/cfengine-community-3.10.0-1.x86_64.rpm -o cfengine.rpm && rpm -ivh cfengine.rpm
