// scripts/index.js
module.exports = async function main(callback) {
    try {
        // Retrieve accounts from the local node
        //const accounts = await web3.eth.getAccounts();
        //console.log(accounts)

        // setup the contract for access
        const Box = artifacts.require("Box")
        const box = await Box.deployed()

        // call the contract for it's value
        value = await box.retrieve()
        console.log("Box value is", value.toString());
  
      callback(0);
    } catch (error) {
      console.error(error);
      callback(1);
    }
  }