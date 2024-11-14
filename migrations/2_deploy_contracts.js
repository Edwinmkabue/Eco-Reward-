const EcoReward = artifacts.require("EcoReward");

module.exports = function (deployer) {
  // Deploy the EcoReward contract
  deployer.deploy(EcoReward);
};
