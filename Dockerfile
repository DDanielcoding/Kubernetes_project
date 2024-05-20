FROM ubuntu

RUN apt-get update && apt-get -y install cowsay
COPY ./sentences.log /root/sentences.log
COPY ./cow.sh /root/cow_script.sh

CMD ["/bin/bash" "/root/cow_script.sh"]
