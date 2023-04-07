//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract localvariable{
uint public age;
bool public b;
address public newAdd;

   function fun(uint _x,bool _y,address _z)public returns(uint,bool) {

       uint i = 20;
       bool b1 = true;

       i+20;
       b1 = false;

       age = _x;
       b = _y;
       newAdd = _z;
       return (i,b1);
   }
     
   //  after taking values in parameter will store in state variables// and function will end//
}