#!/usr/bin/bash

echo "Initializing Demo"
echo "Deleting all intermediate files."

rm -rf ./Verifier
rm -rf ./Prover
rm SmartContract/contracts/verifier.sol
rm SmartContract/test/proof.json
rm -rf ./SmartContract/build

mkdir Verifier
mkdir Prover

cp sha256.zok Verifier/

echo "Ready!"

