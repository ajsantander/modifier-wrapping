### Example of how wrapping modifier code in internal function reduces contract sizes

This example simply uses the Ballot.sol contract from the Solidity docs (https://docs.soliditylang.org/en/v0.8.0/solidity-by-example.html) and adds a dummy modifier to every function in two ways:

1) In Normal.sol, just a regular modifier that has some code in its body.
2) In Wrapped.sol, the modifier's code is wrapped in an internal function.

The test shows how, even with the optimizer running, case 2 produces smaller contract sizes.

Measurements:
* Solidity 0.5.0: Normal 2220, Wrapped 2074
* Solidity 0.6.0: Normal 2016, Wrapped 1878
* Solidity 0.7.0: Normal 2016, Wrapped 1878
* Solidity 0.8.0: Normal 2335, Wrapped 2157

#### Instructions to run the example

```
npm install
npm start
```

You should see the compilation of two contracts and a print of their contract sizes.

You can now try different Solidity compiler versions by changing the version in hardhat.config.js.
