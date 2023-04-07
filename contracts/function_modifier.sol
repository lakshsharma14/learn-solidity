//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract FUNCTION_modifier{

     modifier samneCode{ // creating modifier name samneCode
       for(uint _i=0;_i<10;_i++){  // this for loop was common in 3 functions

      }
     _;    //  WORK IN 3 STAGE this is very imp . this will check which function has modifier name sameCode in it.
        // it will check  the function which has modifier addded to it and than run the function.
        //_; after the for loop it will return to the function and execute the rest of code in function like return;
        // _; it will also check remaing code in modifier in last
     }

     

     function fun1()public pure samneCode returns(string memory){ // modifier samneCode has addded to the function

      
      return "heyy fun1";
     }

    function fun2()public pure samneCode  returns(uint _x){

      
      _x=20;
    }     

    function fun3()public view samneCode  returns(address){

     
      return msg.sender;
     }
     }