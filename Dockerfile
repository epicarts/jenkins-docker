FROM jenkins/jenkins:2.230-centos

USER root

#https://docs.docker.com/engine/install/centos/
RUN yum install -y yum-utils && yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
RUN yum -y install docker-ce --nobest


#Manage Docker as a non-root user
#RUN groupadd docker
#RUN groupadd -g 997 docker
RUN usermod -aG docker jenkins

#USER jenkins
