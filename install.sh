#!/bin/bash
echo "Run these steps on RPi Ubuntu Classic 22.04"
apt install libcairo2-dev pkg-config python3-dev libgirepository1.0-dev
mkdir -p /opt/myproj/connectedhomeip/parts/matter-dev/build/
cp assets.tar.gz /opt/myproj/connectedhomeip/parts/matter-dev/
cd /opt/myproj/connectedhomeip/parts/matter-dev/
tar -zxf assets.tar.gz
./build/out/python_env/bin/activate
./build/out/python_env/bin/python -m pip install --upgrade pip
./build/out/python_env/bin/pip install --upgrade --force-reinstall --no-cache-dir ./python_lib/controller/python/chip_core-0.0-cp37-abi3-linux_aarch64.whl
cd ./examples/lighting-app/tapo-bridge
pip install -r requirements.txt 
echo "Run the application as python lighting.py"

