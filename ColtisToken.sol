// SPDX-License-Identifier: MIT

// TOKEN SPECIFICATIONS:
// - Total supply is a 150000000.
// - No new tokens can ever be minted.
// - Fully ERC20 compliant.
// - This token has no owner, no admin functions, and is fully decentralised.

pragma solidity ^0.8.0;

import "./ERC20.sol";

// A fully ERC20 Compliant Non Mintable Token (ENMT)
contract ColtisToken is ERC20{

    uint256 _totalSupply = 150000000;

    //address _tokenAllocation address of the token allocation contract 
    constructor(address _tokenAllocation) 
        ERC20 ("Coltis","Coltis") {
        _mint(_tokenAllocation, _totalSupply*(10**decimals()));
    }
}