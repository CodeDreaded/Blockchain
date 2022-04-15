

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
    uint256 tokenGrapes; /*<---State Variables (Notice their Scope is outside the function
*                               below. */

    // Utility Token
    uint256 tokenSHIT; // <-- Also a State Variable. Set Ratio to Grapes 1000:1

    //Structs
    //Struct types can be used inside mappings and arrays.
    //They can themselves contain mappings and arrays.
    //https://docs.soliditylang.org/en/latest/types.html?highlight=structs#structs
    struct DreadedApe {
        uint256 tokenSHIT;  /* ----SHIT Coin here--- */
        string name;

    }
    //Calling Struct [Objects]
    //SYNTAX:Call the Struct name, Visibility, Name of Function (Button) = Struct name () <--Pass value to Struct Vars
    // {($VAR: foo, $VAR2: "foo2"} <-- Strings($VAR2) need "". This should be in () to pass value.
    // Call Struct then give name. Pass value to Struct
    // DreadedApe public ape = DreadedApe({tokenSHIT: 2000, name: "King Kong"});

    //Array. A list or group of Info.
    //Syntax: ArrayType[] [Visibility] name;
    // Call Struct
    // https://youtu.be/7Pm9HB-mJQg
    DreadedApe[] public Orangutans;


    // This funtion named "store", pass a value name "-_tokenGrapes".
    // Visibility[Action Button] is set to public [To be seen]
    // https://docs.soliditylang.org/en/v0.8.13/contracts.html#function-parameters-return-variables
    // Syntax: function [name of Func](VAR to Pass from input in the field bar) Visibility { Code; }
    function store(uint256 _tokenGrapes) public { 
        tokenGrapes = _tokenGrapes;
        
    
    }
    //State Mutability [View, Pure]
    //https://docs.soliditylang.org/en/latest/contracts.html?highlight=Return#state-mutability

    //View
    //This function named "retrieve" is used to returns $VAR tokenGrapes.
    //The "view" declaration ensures the function does not change the state.
    //https://docs.soliditylang.org/en/latest/contracts.html?highlight=view#view-functions

    //The returns
    //https://docs.soliditylang.org/en/latest/contracts.html?highlight=Return#return-variables
    function retrieve() public view returns(uint256) {
        return tokenGrapes;

    }

    //Pure
    // Just does math without saving the State.
    //https://docs.soliditylang.org/en/latest/contracts.html?highlight=Return#pure-functions
    


    //Function to pass ($VAR1, $VAR2) from Orangutans Array
    function addApe(string memory _name, uint256 _tokenSHIT) public {
        //Orangutans are Declared at Array Call above
        Orangutans.push(DreadedApe({tokenSHIT: _tokenSHIT, name: _name}));
    }


}
