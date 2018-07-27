#!/bin/bash

git reset --hard
git clean -xfd

wget --no-check-certificate -qO- https://download.pureftpd.org/pub/pure-ftpd/releases/pure-ftpd-1.0.47.tar.gz | tar -xvz --strip=1 -C .

debuild --no-tgz-check -i -us -uc -b
