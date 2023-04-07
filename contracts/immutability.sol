
//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Immutability{
         
          // constant need to intialize inline before deploying the contract
           address public immutable owner;  // inline intialize
           address public constant owner2= address(1);
           address public  owner3= address(3);

         constructor(address _owner){  // or take input from owner in  constructor
         owner = _owner;
         }
         function o1()public view returns(address){ // immutable gas cost 	408 
             return owner;
         }
         function C()public pure returns(address){// constant gas cost 430 
             return owner2; //  if we are reading a constant value we need to make our funtion pure
         
          }
         function S()public view returns(address){ // 	2500  gas cost
             return owner3;
         }

         }