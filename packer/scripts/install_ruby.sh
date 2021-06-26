#!/bin/bash

apt update
echo "install!"
sleep 1
apt install -y ruby-full ruby-bundler build-essential git
