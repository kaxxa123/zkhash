#!/usr/bin/bash

echo "Smart Contract Verification..."

cd ./VerifierContract/
truffle compile
truffle test
cd ..
