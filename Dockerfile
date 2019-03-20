FROM felixkazuyadev/base-image
MAINTAINER Felix Kazuya <me@felixkazuya.de>
MAINTAINER Christian Walonka <cwalonka@it-economics.de>
ENV REFRESHED_AT 2019-03-04


RUN apt-get update && apt-get install -y openjdk-8-jdk ca-certificates-java && update-ca-certificates && apt-get clean
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME
RUN tmpfolder=$(mktemp -d) && \
wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.47.tar.gz -O $tmpfolder/mysql-connector.tar.gz && \
tar -zxvf $tmpfolder/mysql-connector.tar.gz -C $tmpfolder && \
mkdir -p /usr/share/java/ && \
cp $tmpfolder/mysql-connector-java-*/mysql-connector-java-*bin.jar /usr/share/java/mysql-connector-java.jar && \
rm -rf $tmpfolder

WORKDIR /

CMD [ "/bin/bash"]
