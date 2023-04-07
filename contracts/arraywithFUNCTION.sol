//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract arraywithFUCNTION{
    uint[5] public arr;

    function newarray() public pure returns(uint){

        uint[] memory arrmem = new uint[](3);
        arrmem[1]=30;
        return arrmem[1];
    }
}