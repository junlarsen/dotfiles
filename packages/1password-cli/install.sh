#!/usr/bin/env bash

ARCH="amd64"
wget "https://cache.agilebits.com/dist/1P/op2/pkg/v2.29.0/op_linux_${ARCH}_v2.29.0.zip" -O op.zip && \
unzip -d op op.zip && \
sudo mv op/op /usr/local/bin/ && \
rm -r op.zip op && \
sudo groupadd -f onepassword-cli && \
sudo chgrp onepassword-cli /usr/local/bin/op && \
sudo chmod g+s /usr/local/bin/op