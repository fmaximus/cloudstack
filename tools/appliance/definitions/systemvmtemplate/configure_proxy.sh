#!/bin/bash

set -e
set -x

# Set proxy for machines behind firewall
export http_proxy=
export https_proxy=
# export ftp_proxy=""

# All in one line
# export {http,https,ftp}_proxy=""

cat > /etc/wgetrc << EOF
http_proxy = $http_proxy
https_proxy = $https_proxy
EOF

cat >> .bashrc << EOF
export {http,https}_proxy=$http_proxy
export https_proxy=$https_proxy
EOF