#!/usr/bin/env bash

set -oue pipefail

echo 'Installing make...'
rpm-ostree install make
echo 'Cloning nautilus-open-any-terminal source repository...'
cd /tmp
git clone https://github.com/Stunkymonkey/nautilus-open-any-terminal
echo 'Entering repository and running make...'
cd nautilus-open-any-terminal/
make
make install-nautilus schema
echo 'Exiting repo and cleaning up...'
cd
rm -rf /tmp/nautilus-open-any-terminal
rpm-ostree uninstall make
