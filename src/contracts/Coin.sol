// contracts/PartyTokens.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Import Auth from the access-control subdirectory
import "./access-control/Auth.sol";

// Import Ownable from the OpenZeppelin Contracts library
// Causes version conflicts that need to be resolved.
// import "@openzeppelin/contracts/access/Ownable.sol";

// Import chainlink aggregator
// import "https://raw.githubusercontent.com/smartcontractkit/chainlink/master/evm-contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

// need that zeppelin yo
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PartyTokens is ERC20 {

    constructor() ERC20("PartyTokens Token", "PP") {
        _mint(msg.sender, 10000000);
    }
}
