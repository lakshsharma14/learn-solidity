//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;


contract datalocation{ 

    //  uint[] public arr = [1,2,3,4,5,6,7];
      
    //   function stor()public{  // storage funtion is pointing same locationg of arr;
                     // it will modify index value because they both are in storage of blockchain
    //       uint[] storage arrs = arr;
    //       arrs[3] = 99;
    //   }

    //   function mem()public view{
    //       uint[] memory arrm = arr; // does not modify index value just copy the data to in//
    //       arrm[3] = 192;            // memory stores in stack , ram//
    //   }

         function Memory(string memory str,uint[] memory arr)public{
         // 2695 execution cost in more than calldata because we can modify str and arr if we want
         getinmem(arr);
         //getincalldat(arr);memory to call we cant 
         }

         function Calldata(string calldata strr,uint[] calldata arrr)public{
         // 715 execution cost in call data is less because we cant modify strr and arrr now.
         //  use call data when we dont want tp change input given by the user//
         
          
         }

         function getinmem(uint[] memory arr) public{

         }

         function getincalldat(uint[] calldata arr)public{

         }
}
