//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract FixedSIZEBYTES{
   bytes5 public temp;
   bytes7 public temp2;
   
   // set value of bytes with function//
   function setval()public{
       temp="abcde"; // 0x6162636465
       temp2 = "abcd12g";// 0x61626364313267
   }
        // getting index value in bytes
   function getdigit()public view returns(bytes1){
       return temp[1]; // output 0x62
   }
   function getlen()public view returns(uint){
       return temp.length; //  output 5
   }

}
