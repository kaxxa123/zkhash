#!/usr/bin/bash

echo "Setup Command sequence..."
echo "Compile circuit..."
cd ./Setup/
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
cp ./Setup/proving.key ./Prover/
cp ./Setup/sha256.zok  ./Prover/

echo "Give Verifier contract to truffle"
cp ./Setup/verifier.sol ./VerifierContract/contracts/
