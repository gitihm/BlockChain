
const hre = require("hardhat");

async function main() {

  const EtherUnits = await hre.ethers.getContractFactory("EtherUnits");
  const etherUnits = await EtherUnits.deploy();

  await etherUnits.deployed();

  console.log("EtherUnits deployed to:", etherUnits.address);

  const Array = await hre.ethers.getContractFactory("Array");
  const array = await Array.deploy();

  await array.deployed();

  console.log("Array deployed to:", array.address);

  console.log("array: ",await array.get())
  array.add(1)
  array.add(2)
  array.add(3)
  array.add(4)
  array.add(5)
  console.log("array: ",await array.get())
  array.remove(3)
  console.log("array: ",await array.get())
  array.add(3)
  array.removeNoneGap(3)
  console.log("array: ",await array.get())
  console.log("count: ",await array.count())
}


main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
