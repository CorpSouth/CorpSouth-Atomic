#!/usr/bin/env bash

####################################################################
#Set the correct dynamic background for every release at build time#
#by generating the gschema override entries specified below.########
#############################################################

set -oue pipefail

FEDORA_BACKGROUNDS_BASE="f$(rpm -E %fedora)"

echo 'Printing gschema override file...'

cat <<EOF >> /usr/share/glib-2.0/schemas/zz1-fedora-backgrounds-base.gschema.override
[org.gnome.desktop.background]
picture-uri='file:///usr/share/backgrounds/$FEDORA_BACKGROUNDS_BASE/default/$FEDORA_BACKGROUNDS_BASE.xml'
picture-uri-dark='file:///usr/share/backgrounds/$FEDORA_BACKGROUNDS_BASE/default/$FEDORA_BACKGROUNDS_BASE.xml'

[org.gnome.desktop.screensaver]
picture-uri='file:///usr/share/backgrounds/$FEDORA_BACKGROUNDS_BASE/default/$FEDORA_BACKGROUNDS_BASE.xml'
EOF
