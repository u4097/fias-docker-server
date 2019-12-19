FROM centos:7
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.232.b09-0.el7_7.x86_64

RUN yum -y update
RUN yum -y install gcc
RUN gcc --version

RUN yum -y install python36

# Install pip3
RUN yum -y install python36-setuptools # install easy_install-3.6 
RUN easy_install-3.6 pip

RUN yum install -y python3-devel.x86_64

RUN yum install -y maven
RUN mvn -v

RUN  pip install --user jep
RUN  pip install --user fiases 
