async function main(){
  const [deployer]=await ethers.getSigners();
  console.log("Deploying contract with the following account:", deployer.address);

  const bank= await ethers.deployContract("Token");
  console.log("Contract address is:",await bank.getAddress());


}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});