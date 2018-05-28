#!/bin/bash -e

echo "================= Installing Python 3.5 ==================="

wget "https://www.python.org/ftp/python/3.5.5/Python-3.5.5.tgz"
tar -xf Python-3.5.5.tgz
cd  Python-3.5.5
./configure
make
make altinstall


echo "================= Successfully Installed Python 3.5 ==================="
