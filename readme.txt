* * * * * * * * * 
zkhash Demo
* * * * * * * * * 


Setup
=====

1. To run this demo you first need to install zokrates:
    https://zokrates.github.io/gettingstarted.html

2. To run the on-chain verification you will need truffle.
    Here is my truffle version information:

    $ truffle version
    Truffle v5.4.17 (core: 5.4.17)
    Solidity v0.5.16 (solc-js)
    Node v12.22.1
    Web3.js v1.5.3


Demo Installation
=================

This demo is based on the sha256 preimage example available here:
https://zokrates.github.io/examples/sha256example.html

However the code was slightly modified to make it a bit easier to explain.
The original code is available here:
./original.zok

The code we will be working with is:
./sha256.zok

To quickly test the demo, run:
$ git clone https://github.com/kaxxa123/zkhash.git
$ cd zkhash
$ ./4_all.sh

If everything goes well you will finally see the verification 
result from truffle:

    Compiling your contracts...
    ===========================
    > Everything is up to date, there is nothing to compile.



    Contract: Testing Verifier contract
    Verify Result: true
        ✓ Should confirm on Verify (1364ms)


    1 passing (1s)



Demo Details
============

* To run this demo we make use of the following online tools:

    SHA256 online generator:
    https://emn178.github.io/online-tools/sha256.html

    Decimal to Hex convertor:
    https://www.rapidtables.com/convert/number/decimal-to-hex.html


* This ZKP is about proving sha256 preimage knowledge. In this case 
  we assume that the preimage is the number 5. To be more accurate
  the hash preimage in hex is:

  00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005

* The SHA256 for this hex input is:
  c6481e22c5ff4164af680b8cfaa5e8ed3120eeff89c4f307c4a6faaae059ce10


* Next we need to break this 256-bit output into 2 128-bit values
  and covert them to decimal:

  c6481e22c5ff4164af680b8cfaa5e8ed  -> 263561599766550617289250058199814760685
  3120eeff89c4f307c4a6faaae059ce10  -> 65303172752238645975888084098459749904


* In this manner we generate the ZKP proof inputs that are shown in
  ./2_prover.sh in the command:

    zokrates compute-witness -a 0 0 0 5 263561599766550617289250058199814760685 65303172752238645975888084098459749904

