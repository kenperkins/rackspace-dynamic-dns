FROM tutum/dnsutils

RUN apt-get update
RUN apt-get install -yq jq curl wget
RUN wget https://github.com/linickx/rsdns/archive/v4.1.tar.gz && tar -xvf v4.1.tar.gz
RUN mkdir /root/bin
RUN ln -s /rsdns-4.1 /root/bin/rsdns
RUN apt-get clean && rm -rf /var/lib/apt/lists

CMD ["sh", "-c", "/root/bin/rsdns/rsdns-dc.sh -n $DYN"]