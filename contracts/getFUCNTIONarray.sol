//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract GETFUCNTIONARRAY{
    uint[5] arr;
    constructor(){
        arr=[10,20,30,40,50];
    }

    function getarray() public view returns(uint[5] memory){
     return arr;
    }
}

 c