FROM ubuntu:trusty

RUN apt-get update \
    && apt-get -y upgrade \
	&& apt-get -y install libboost-system1.54.0 libboost-filesystem1.54.0 libboost-program-options1.54.0 \
	libboost-thread1.54.0 libboost-chrono1.54.0 libdb4.8 libdb4.8++ libssl1.0.0 unzip \
	libevent-2.0-5 libevent-pthreads-2.0-5 software-properties-common \
    && add-apt-repository ppa:bitcoin/bitcoin \
    && apt-get update \
    && apt-get -y install libdb4.8-dev libdb4.8++-dev unzip \
    && apt-get -y install wget libzmq3 libminiupnpc8
	
ENV WALLET_URL=https://github.com/papelcoin/papelcoin/releases/download/v0.12.2.3/PapelD-Unix.zip

RUN wget $WALLET_URL -O /tmp/wallet.zip \
	&& unzip /tmp/wallet.zip -d /usr/local/bin \
	&& mkdir -p /data/.papelcore

#rpc port & main port
EXPOSE 22000 21999

ENV HOME /data

COPY start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh