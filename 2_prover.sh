#!/usr/bin/bash

echo "Prover Command sequence..."
echo "Compile circuit"
cd ./Prover/
zokrates compile -i sha256.zok

echo
echo "Generate Witness..."
zokrates compute-witness -a 0 0 0 5 263561599766550617289250058199814760685 65303172752238645975888084098459749904

echo
echo "Generate Proof using Proving Key and Witness"
zokrates generate-proof

echo
echo "Pass proof to Verifier contract"
cd ..
cp ./Prover/proof.json  ./VerifierContract/test/
