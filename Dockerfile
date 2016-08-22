FROM alpine
ENV CPU=1 \
HDD=1 \
IO=1 
#apt-get update && apt-get install -y \
#  stress \
#  --no-install-recommends \
#  && rm -rf /var/lib/apt/lists/*
RUN wget -O /var/cache/apk/stress.apk && \
  http://dl-3.alpinelinux.org/alpine/edge/testing/x86_64/stress-1.0.4-r0.apk && \
  apk add --update /var/cache/apk/stress.apk && rm -rf /var/cache/apk/*
ADD run.sh /usr/local/bin
cmd ["run.sh"]

