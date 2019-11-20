#!/bin/bash
cd ui
curl -sL https://deb.nodesource.com/setup_13.x | bash -
apt-get install -y nodejs
npm install