FROM ubuntu:24.04

# Base OS setup
RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get -y install ca-certificates wget \
    && rm -rf /var/lib/apt/lists/*

# App directory (optional but tidy)
WORKDIR /app

# Copy in binaries from the repo
COPY bin/verusd bin/verus bin/fetch-params /usr/local/bin/

RUN chmod +x /usr/local/bin/verusd \
             /usr/local/bin/verus \
             /usr/local/bin/fetch-params

# Data + params volumes (mapped via docker-compose on the Pis)
VOLUME ["/root/.komodo/VRSC", "/root/.zcash-params"]

# Default command: run verusd in foreground with console logging
CMD ["verusd","-printtoconsole"]
