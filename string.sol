//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract _string{
    string public str = "lakshay";  // state variable// goint to make local variable string type//

     function ckstring(string memory _str1) public pure returns(string memory){
         string memory name = _str1;
         return name;
     }
}