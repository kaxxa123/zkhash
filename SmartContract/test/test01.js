const Verifier = artifacts.require("Verifier");
const fs = require('fs');

contract('Testing Verifier contract', function(accounts) {

    it('Should confirm on Verify', async () => {
        let ver = await Verifier.deployed();
        let proof = JSON.parse(fs.readFileSync("./test/proof.json"));

        let res = await ver.verifyTx(proof.proof.a, proof.proof.b, proof.proof.c, proof.inputs);
        assert(res,"Verification FAILED!");
        console.log(`Verify Result: ${res}`);

    });
});