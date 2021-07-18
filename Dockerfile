From debian:latest
RUN apt-get -y update && apt-get upgrade
RUN apt-get -y install shellcheck shunit2 yash
WORKDIR /scripts
COPY ./ ./
RUN chmod +x ./test.sh
RUN ln -sf /usr/bin/yash /bin/sh
cmd ["./test.sh"]
