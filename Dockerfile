FROM scratch
ADD ubuntu-trusty-core-cloudimg-amd64-root.tar.gz /

ADD init-fake.conf /etc/init/fake-container-events.conf

# delete all the apt list files since they're big and get stale quickly
RUN rm -rf /var/lib/apt/lists/*
# this forces "apt-get update" in dependent images, which is also good

# enable the universe
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list

CMD ["/sbin/init"]
