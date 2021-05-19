# poolparty
Crypto Coin

# What is here?
* contracts/Box.sol is the entry point, and is managed by OpenZeppelin's `Ownable` contract.  There's an automated unit test under the `tests` folder the corresponds to the Box contract.

# development

## requirements
1. install node
1. install truffle
1. `npm install --save-dev @openzeppelin/contracts`
1. `npm install --save-dev ganache-cli`
1. `npm install --save-dev chai`
1. `npm install --save-dev @openzeppelin/test-helpers`


## workspace setup
1. `git clone https://github.com/poolpartycoin/poolparty.git`
1. `cd poolparty`
1. `git checkout dev`

## deploy contract
compile contract
1. `npx truffle compile`

Start a local blockchain instance with truffle.
1. `npx ganache-cli --deterministic --db`

deploy to local testnet
1. `npx truffle migrate --network development`


## interact with contract via cli (examples)
1. `npx truffle console --network development`
1. `box = await Box.deployed()`
1. `await box.store(42)`
1. `await box.retrieve()`
1. `(await box.retrieve()).toString()`
[Truffle console documentation](https://www.trufflesuite.com/docs/truffle/getting-started/using-truffle-develop-and-the-console) for reference

## interact with contract programmetically
1. `npx truffle exec --network development ./scripts/index.js`

## executing unit tests
1. `npx truffle test`


# merging code
1. execute tests
1. rebase
1. submit code review
1. push code