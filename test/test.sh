#!/bin/sh

whoami
pwd
cd test
gem install chef --version 10.12.0
gem install librarian --version 0.0.24
librarian-chef install
#sudo sed -i "s/%admin ALL=NOPASSWD:ALL/%admin ALL=\(ALL\) NOPASSWD:ALL/" /etc/sudoers
sudo chmod 777 /etc/apt/sources.list
chef-solo --config ~/builds/indoorsdog/development-machine/test/solo.rb --json-attributes ~/builds/indoorsdog/development-machine/test/node.json
