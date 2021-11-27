#!/usr/bin/bash

bash 0_init_demo.sh
echo "================================"
echo

bash 1_zkp_setup.sh
echo "================================"
echo

bash 2_prover.sh
echo "================================"
echo

bash 3_verify_onchain.sh
echo "================================"
echo

