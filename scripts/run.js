const hre = require('hardhat');

async function main() {
  await hre.run('compile', { force: true });

  function printContractSize(contractName) {
    const artifact = hre.artifacts.readArtifactSync(contractName);
    const bytecode = artifact.deployedBytecode;
    const bytecodeSize = bytecode.length / 2;

    console.log(`${contractName}: ${bytecodeSize} bytes`);
  }

  printContractSize('Normal');
  printContractSize('Wrapped');
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
