// migrations/2_deploy.js
const pp = artifacts.require("PoolParty");

module.exports = async function (deployer) {
  await deployer.deploy(pp);
};