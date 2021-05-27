#!/usr/bin/env bash

deactivate
cd ~
git clone https://github.com/ilia85-star/pgb.git
mkdir ~/pgb-tmp
python3 -m pip install --upgrade pip venv
python3 -m venv ~/pgb-tmp
source ~/pgb-tmp/bin/activate
python3 -m pip install --upgrade pip build
cd ~/pgb
python3 -m build
deactivate
python3 -m pip install dist/pgb-0.0.1-py3-none-any.whl

rm -r ~/pgb-tmp
