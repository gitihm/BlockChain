
const hre = require("hardhat");

async function main() {

  const EtherUnits = await hre.ethers.getContractFactory("EtherUnits");
  const etherUnits = await EtherUnits.deploy();

  await etherUnits.deployed();

  console.log("EtherUnits deployed to:", etherUnits.address);
}


main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
