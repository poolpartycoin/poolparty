// scripts/index.js
module.exports = async function main(callback) {
    try {
        // Retrieve accounts from the local node
        //const accounts = await web3.eth.getAccounts();
        //console.log(accounts)

        // setup the contract for access
        const PoolParty = artifacts.require("PoolParty")
        const pp = await PoolParty.deployed()

        // call the contract for it's value
        value = await pp.retrieve()
        console.log("PoolParty value is", value.toString());

        await pp.add(42)
        new_value = await pp.retrieve()
        console.log("PoolParty new value is", new_value.toString());

        if (pp.state == Waiting) {
          state = await pp.isActive()
        }
  
      callback(0);
    } catch (error) {
      console.error(error);
      callback(1);
    }
  }