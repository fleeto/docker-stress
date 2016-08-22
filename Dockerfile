FROM alpine
ENV CPU=1 \
HDD=1 \
IO=1 
#apt-get update && apt-get install -y \
#  stress \
#  --no-install-recommends \
#  && rm -rf /var/lib/apt/lists/*
RUN apk update && apk add --update stress && rm -rf /var/cache/apk/*
ADD run.sh /usr/local/bin
cmd ["run.sh"]

