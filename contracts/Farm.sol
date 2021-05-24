// contracts/PoolParty.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Import Auth from the access-control subdirectory
import "./access-control/Auth.sol";

// Import Ownable from the OpenZeppelin Contracts library
// Causes version conflicts that need to be resolved.
import "@openzeppelin/contracts/access/Ownable.sol";

// Import chainlink aggregator
// import "https://raw.githubusercontent.com/smartcontractkit/chainlink/master/evm-contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

// need that zeppelin yo
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract PpFarm is Ownable {
    string public name = "The Pool Party";
    IERC20 public ppToken;
    // change this to a mapping to save on gas
    address[] allowedTokens;

    // user address maps to a mapping of token address that map to amounts
    mapping(address => mapping(address => uint256)) public stakingBalance;
    
    constructor(address _ppTokenAddress) {
        ppToken = IERC20(_ppTokenAddress);
    }

    /*
    customer will call this function to stake their token
    */
    function stakeToken(uint256 _amount, address token) public {
        require(_amount > 0, "AMount cannot be 0");
        if (tokenIsAllowed(token)) {
            updateUniqueTokensStake()
            _IERC(token).transferFrom(msg.send, address(this), _amount);
            stakingBalance
        }
    }

    /*
    If the 'token' is in our array/list of tokens, all it to be staked.
    */
    function tokenIsAllowed(address token) public returns(bool){
        for (uint256 allowedTokensIndex =0; allowedTokensIndex < allowedTokens.length; allowedTokensIndex++) {
            if (allowedTokens[allowedTokensIndex] == token){
                return true;
            }
        }
        return false;
    }

    /*
    Only Owner means this function is only allowed to be executed by the token owner.
    */
    function addAllowedTokens(address token) public onlyOwner {
         allowedTokens.push(token);
    }

    function unstakeToken() public {

    }

    function issueTOkens() public {

    }

    function gettokenEthPrice() public {

    }
}
