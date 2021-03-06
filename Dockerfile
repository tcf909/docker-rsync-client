FROM tcf909/watcher:latest
MAINTAINER T.C. Ferguson <tcf909@gmail.com>

RUN \
    apt-get update && \
    apt-get upgrade && \

#RSYNC
    apt-get install \
        rsync && \

#CLEANUP
    apt-get autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp*