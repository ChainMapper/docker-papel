FROM chainmapper/walletbase-xenial
	
ENV WALLET_URL=https://github.com/papelcoin/papelcoin/releases/download/v1.0.0.1/Papel.Core.Linux.zip

RUN wget $WALLET_URL -O /tmp/wallet.zip \
	&& unzip /tmp/wallet.zip -d /usr/local/bin \
	&& mkdir -p /data/.papelcore

#rpc port & main port
EXPOSE 22000 21999

ENV HOME /data

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
RUN chmod 777 /*.sh
CMD /start.sh