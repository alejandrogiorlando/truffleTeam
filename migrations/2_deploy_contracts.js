const smrtCoin = artifacts.require("smrtCoin");

module.exports = function (deployer) {
  deployer.deploy(smrtCoin);
};