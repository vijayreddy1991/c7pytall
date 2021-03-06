#!/bin/bash -e

export PYTHON_PIP=18.0
wget -nv https://bootstrap.pypa.io/3.3/get-pip.py
python get-pip.py
python -m pip install pip=="$PYTHON_PIP"

pip install -U pip setuptools

# Installing virtualenv-16.0.0
wget -nv https://files.pythonhosted.org/packages/33/bc/fa0b5347139cd9564f0d44ebd2b147ac97c36b2403943dbee8a25fd74012/virtualenv-16.0.0.tar.gz
tar xvfz virtualenv-16.0.0.tar.gz
cd virtualenv-16.0.0
python setup.py install
cd /

yum install -y zlib openssl bzip2-devel

for file in /c7pytall/version/*;
do
  $file
done
