#!/usr/bin/bash

echo "Verifier Command sequence..."
echo "Compile circuit..."
cd Verifier/
zokrates compile --ztf -i sha256.zok

echo 
echo "Generate Proving/Verifing keys..."
zokrates setup

echo 
echo "Export Verifier Smart Contract..."
zokrates export-verifier

echo 
echo "Give Circuit and Proving Key (PK) to Prover"
cd ..
cp Verifier/proving.key Prover/
cp Verifier/sha256.zok Prover/

echo "Give Verifier contract to truffle"
cp Verifier/verifier.sol SmartContract/contracts/
