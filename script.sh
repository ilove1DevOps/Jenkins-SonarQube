#!/bin/bash
apt update
apt install -y python2
python2 get-pip.py
rm -rf /var/lib/apt/lists/*
pip install --no-cache-dir -r requirements.txt
