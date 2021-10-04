require("@nomiclabs/hardhat-ethers");

module.exports = {
  solidity: {
    version: '0.8.0',
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      }
    }
  }
};
