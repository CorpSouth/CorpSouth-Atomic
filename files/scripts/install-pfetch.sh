#!/usr/bin/env bash

set -oue pipefail

echo 'Installing Pfetch...'

wget https://raw.githubusercontent.com/Un1q32/pfetch/master/pfetch -O /usr/bin/pfetch
chmod +x /usr/bin/pfetch

echo 'Generating shell profile entry...'

cat << 'EOF' >> /etc/profile.d/pfetch.sh
if [ -x "/usr/bin/pfetch" ]; then
        PF_INFO="ascii title de editor host kernel memory os pkgs shell uptime wm palette" pfetch
fi;
EOF
