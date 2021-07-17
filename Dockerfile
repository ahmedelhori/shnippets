From debian:latest
RUN apt-get -y update && apt-get upgrade
RUN apt-get -y install shellcheck shunit2
WORKDIR /scripts
COPY ./ ./
RUN chmod +x ./test.sh
ENTRYPOINT ["./test.sh"]
