FROM tcf909/watcher:latest
MAINTAINER T.C. Ferguson <tcf909@gmail.com>

ARG DEBUG=true

RUN \
    apt-get update && \
    apt-get upgrade && \

#Debug
    if [ "${DEBUG}" = "true" ]; then \
            apt-get install vim iptables net-tools iputils-ping mtr tcpdump; \
    fi && \

#RSYNC
    apt-get install \
        rsync && \

#CLEANUP
    apt-get autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp*