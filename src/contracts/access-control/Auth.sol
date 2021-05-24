// contracts/access-control/Auth.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Auth {
    address private administrator;

    constructor() {
        // Make the deployer of the contract the administrator
        administrator = msg.sender;
    }

    function isAdministrator(address user) public view returns (bool) {
        return user == administrator;
    }
}