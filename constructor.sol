//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Constructor{

    uint public  age;
    address public owner;
    string public name;

    constructor( string memory _name, uint _age,address _owner){
        age = _age;
        owner = _owner;
        name = _name;
    }
    // we have to give insert value to parameters before deploying the contract//
}