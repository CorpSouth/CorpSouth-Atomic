#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.

echo 'Installing make...'
rpm-ostree install make
echo 'Cloning nautilus-open-any-terminal source repository...'
cd /tmp
git clone https://github.com/KyleGospo/nautilus-open-any-terminal
echo 'Entering repository and running make...'
make
make install schema
echo 'Exiting repo and cleaning up...'
cd
rm -rf /tmp/nautilus-open-any-terminal
