//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract dynamicSIZEDARRAY{
    uint[] public arr = [23,455,342,34,43,2,3,4,35,35];

//      function getarray()public view returns(uint[]memory){
//          return arr;
//      }
        
         function fun()public{

           uint temp =arr[2];   // output [342]

           arr[3]=232;    // [23,455,342,232,43,2,3,4,35,35];

           delete arr[1];  //[23,0,342,232,43,2,3,4,35,35];

           uint len = arr.length; //10

            // push
          //  arr.push(111);

            // pop
            arr.pop();
         }


         function getarray()public view returns(uint[]memory){
         return arr;
         }
 }