//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract arraywihtFORLOOP{
    uint[5] public arr;

  function arraywithloop(uint _x) public{
      for(uint i=0; i<arr.length;i++){
          arr[i] = _x+i;
      }
  }
}