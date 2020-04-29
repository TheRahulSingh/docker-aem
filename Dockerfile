FROM ubuntu
WORKDIR /opt/aem-6
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:openjdk-r/ppa && \
    apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk11-installer
	
ADD license.properties ./
ADD cq-quickstart-6.5.0.jar cq-quickstart.jar
RUN java -jar cq-quickstart.jar -unpack