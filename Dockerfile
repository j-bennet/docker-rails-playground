FROM ubuntu:14.04

# Set the locale
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

# install packages
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install ruby-full
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install ruby1.9.3
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install sqlite3
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install make
RUN DEBIAN_FRONTEND=noninteractive gem install rails

# Add image configuration and scripts
ADD scripts /scripts
RUN chmod 755 /scripts/*.sh

VOLUME ["/code"]
EXPOSE 3000

CMD ["/scripts/run.sh"]
