const token = artifacts.require("DogeMalone");

module.exports = async function(deployer) {
  await deployer.deploy(token);
}
