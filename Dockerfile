FROM felixkazuyadev/base-image
MAINTAINER Felix Kazuya <me@felixkazuya.de>
MAINTAINER Christian Walonka <cwalonka@it-economics.de>
ENV REFRESHED_AT 2019-03-04


RUN apt-get update && apt-get install -y openjdk-8-jdk ca-certificates-java && update-ca-certificates && apt-get clean
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

# Add app specific ansible files
COPY ansible /srv/ansible
COPY files/mysql-connector-java-5.1.32-bin.jar /usr/share/java/mysql-connector-java.jar

# Add generic ansible roles
#WORKDIR /srv/ansible
#RUN ansible-galaxy install -r ansible/requirements.yml -p ansible/roles
#RUN ansible-playbook container.yml -c local

WORKDIR /

CMD [ "/bin/bash"]
