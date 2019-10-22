#！/bin/bash
sudo apt-get update
sudo apt-get install lib32stdc++6 python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install --upgrade git+https://github.com/Gallopsled/pwntools.git@dev3
mkdir tmp
cd tmp
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
cd ..
git clone https://github.com/lieanu/LibcSearcher.git
cd LibcSearcher
sudo python setup.py develop
cd ..
git clone https://github.com/angr/angr-dev
cd angr-dev
./setup.sh -i -e angr
sudo apt-get install curl
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh