FROM ghcr.io/open-webui/open-webui:v0.6.22

RUN apt-get update \
  && apt-get install -y ca-certificates \
  && rm -rf /var/lib/apt/lists/*
COPY ext/pki/tls/*.crt /usr/local/share/ca-certificates
RUN update-ca-certificates
