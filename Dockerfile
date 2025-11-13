FROM ubuntu:24.04
RUN apt-get update && apt-get -y upgrade && apt-get -y install ca-certificates wget && rm -rf /var/lib/apt/lists/*
COPY verusd verus fetch-params /usr/local/bin/
RUN chmod +x /usr/local/bin/verusd /usr/local/bin/verus /usr/local/bin/fetch-params
VOLUME ["/root/.komodo/VRSC", "/root/.zcash-params"]
CMD ["verusd","-printtoconsole"]
