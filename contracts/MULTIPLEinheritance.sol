//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract A{
    uint public a;

    constructor(){
        a = 100;
    }

    function changeaA()public{
        a = 101;
    }
}
contract B is A{
    uint public b;

    constructor(){
        b = 100;
        a = 50;   // EXPLAING SEQUENCE OF INHERITING FROM MULTIPLE CONTRACT
    }

    function changeaB()public{
        b = 101;
    }
}
   contract C is A,B{  // a=50 (contract b variable and functions will dominate in contract c.
                       // sequnce of inheriting right to left // depth first
   }                   // it will go to contract B and than contract A
                       //  a = 100; in contract A but it will look after contract b is bceause 
                       // contract B is child of A and has alreay a in it.