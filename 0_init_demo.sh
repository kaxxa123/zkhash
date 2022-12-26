#!/usr/bin/bash

echo "Initializing Demo"
echo "Deleting all intermediate files."

shopt -s extglob
cd ./Setup   &&  rm -rf  !(.gitignore)  && cd ..
cd ./Prover  &&  rm -rf  !(.gitignore)  && cd ..

rm ./VerifierContract/contracts/verifier.sol
rm ./VerifierContract/test/proof.json
rm -rf ./VerifierContract/build

cp sha256.zok  ./Setup/

echo "Ready!"

