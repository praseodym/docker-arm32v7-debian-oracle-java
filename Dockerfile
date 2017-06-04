FROM arm32v7/debian:jessie

RUN export DEBIAN_FRONTEND='noninteractive' && \
    echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" > /etc/apt/sources.list.d/webupd8team-java.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates-java oracle-java8-installer oracle-java8-set-default oracle-java8-unlimited-jce-policy && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/cache/oracle-jdk8-installer
