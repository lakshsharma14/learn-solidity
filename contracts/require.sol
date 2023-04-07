//SPDX-License-Identifier:MIT


pragma solidity ^0.8.0;

contract Require{

    address public owner = msg.sender;
    uint public age = 25;

    function checkrequire(uint _x)public{
        age = age+5;
        require(_x>2,"value of x is less than 2");
    }
    function onlyowner()public{
        require(owner==msg.sender,"you are not the owner");
        age=age-2;
    }
}