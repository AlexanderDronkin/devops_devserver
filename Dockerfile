FROM ubuntu:22.04

RUN <<EOF
apt-get update
apt-get install -y git curl
curl -sL "https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64" \
    --output /tmp/vscode-cli.tar.gz
tar -xf /tmp/vscode-cli.tar.gz -C /usr/bin
rm /tmp/vscode-cli.tar.gz


apt-get clean
rm -rf /var/lib/apt/lists/*
EOF

WORKDIR /workspace