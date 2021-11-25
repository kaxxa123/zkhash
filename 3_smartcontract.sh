#!/usr/bin/bash

echo "Smart Contract Verification..."

cd SmartContract/
truffle compile
truffle test
cd ..
