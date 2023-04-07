//SPDX-License-Identifier:MIT


pragma solidity ^0.8.0;

contract statevariable{    // 3 ways to intialize state variable//
    uint public age;     // inline//

    constructor(){  // with constructor//
        age = 14;
    }
   function setage()public{   // with function//
       age = 18;

   } // state variable directly stores in blockchain//


 
}    

     