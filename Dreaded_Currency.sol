

/*                                                      Created by Yogi Starks. 

*                                              Published:              Community:The Shrewness


*/

// For Contract Structure Documentation 
//see https://docs.soliditylang.org/en/v0.8.13/structure-of-a-contract.html#function-modifiers

// SPDX-License-Identifier: MIT

// Always use pragma to choose the Solidity Version
pragma solidity ^0.6.0;


// Like Class in Javascript
contract DreadedCurrency {


/* TYPES
    uint256
    bool
    string
    int256
    address = [Public Wallet Address]
    bytes32
*/
    
    // Governance Token
    uint256 public tokenGrapes; /*<---State Variables (Notice their Scope is outside the function
*                               below. */

    // Utility Token
    uint256 public tokenSHIT = 1; // <-- Also a State Variable. Set Ratio to Grapes 1000:1



    // This funtion named "store", pass a value name "-_tokenGrapes".
    // Visibility[Action Button] is set to public [To be seen]
    // https://docs.soliditylang.org/en/v0.8.13/contracts.html#function-parameters-return-variables
    // Syntax: function [name of Func](VAR to Pass from input in the field bar) Visibility { Code; }
    function store(uint256 _tokenGrapes) public { 
        tokenGrapes = _tokenGrapes;
        
    
    }
}
