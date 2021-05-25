# Welcome to the party!

This project is a work in progress, but is designed to be community driven, trustworthy, and a fun way to build a community.

# Who's party is this?


# What is there to do at the party?

# Party Supplies

* The pool party token lives in `src/contracts/Poolparty.sol` is the entry point.  There's an automated unit test under the `tests` folder the corresponds to the PoolParty contract.
* The front end is a React, CSS, Web3 project that lives under `src`.
* Continuous Integration and Deployment is automated via Fleek.io and GitHub.


# Development

Install these things to get going.  OpenZepplin is a trusted contract framework, Ganache is a locally ran blockchain used for development, Chai is an assertion library used in testing, Truffle is project management framework with wallet-level integrations, and `npm install` handles the project's dependency installs.

## Start here
1. install node
1. install truffle
1. `npm install --save-dev @openzeppelin/contracts`
1. `npm install --save-dev @openzeppelin/test-helpers`
1. `npm install --save-dev ganache-cli`
1. `npm install --save-dev chai`
1. `npm install --save-dev truffle-hdwallet-provider`
1. `npm install`

### Workspace setup
Pull the repo down and hop into the directory
1. `git clone https://github.com/poolpartycoin/poolparty.git && cd poolparty`

Checkout the development branch
1. `git checkout dev`

Setup your MetaMask or whatever wallet key phrase to interact with test networks
1. `echo $INSERT YOUR WALLET KEY PHRASES HERE > .secret && chmod 6000 .secret` <!-- Truffle configuration for development -->

----------------
## BackEnd

### Deploy contract
Compile the contracts
1. `npx truffle compile`

Start a local blockchain instance with truffle to deploy the contracts to locally
1. `npx ganache-cli --deterministic --db`

Deploy to local blockchain testnet
1. `npx truffle migrate --network development`

Other networks are available.  For example, `npm truffle migrate --network matic` deploys to the Matic network.  See `truffle-config.js`.

### Interact with contract via cli (examples)
After the contract(s) deployment succeeds, here is an example of interacting with the contract via cli.
```
npx truffle console --network development
pp = await PoolParty.deployed()
await pp.store(42)
await pp.retrieve()
(await pp.retrieve()).toString()
```
[Truffle console documentation](https://www.trufflesuite.com/docs/truffle/getting-started/using-truffle-develop-and-the-console) for reference

### Interact with contract programmetically
Example script execution
```
npx truffle exec --network development ./scripts/index.js
```

### executing unit tests
```
npx truffle test
```

----------------
## Front-End
Start local web server
```
npm run build
```



----------------
# merging code
1. execute tests
1. rebase
1. submit code review
1. push code