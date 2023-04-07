//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract HASHfunnctions{

  function Keccak256(uint _x,string memory name , address _add)public pure returns(bytes32){
// TAKING INPUT FROM USER AND THAN CONVERTING IN INTO BYTES WITH ABO.ENCODEPACKED,AND THAN CONVERTING INTO HASH
     return keccak256(abi.encodePacked(_x,name,_add));  // P WILL CAPITAL IN PAKCED
  }   

  function Sha256(uint _x,string memory name,address _add)public pure returns(bytes32){
     return sha256(abi.encode(_x,name,_add));//we are using abi.encode to convert data into bytes
  //output (abi.encode(_x,name,_add))=0xf7f725082055fa9b5691c221790b251ed53fa94e940eb77ca92bb993becce005
  }
     // diiference between (abi.encode) and (abi.encodePacked)

    function Sha2(uint _x,string memory name,address _add)public pure returns(bytes32){
    return sha256(abi.encodePacked(_x,name,_add));
  // output for (abi.encodePacked(_x,name,_add)); =0xf7f725082055fa9b5691c221790b251ed53fa94e940eb77ca92bb993becce005 
  }

  function Ripemd160(uint _x,string memory name,address _add)public pure returns(bytes20){
    return ripemd160(abi.encodePacked(_x,name,_add));
    // output of hash function(_x,name,_add) 0x46e41cb462782be70d44aea9bba43f39bf1ca370
  }

// DIFFERENCE BETWEEN ABI.ENCODE AND ABI.ENCODEPACKED IS THE ARE CONVERTING SAMNE DATA INPUT INTO BYTES IN 2 DIFFRENT WAYS
// SO BYTES WILL NOT BE SAME FOR SAME HASH FUNCTION SHA256 OR KECCAK256 THEY ARE GETTING DIFFRENT BYTE 
// VALUE SO THEY ARE RETURNING DIFFERENT HASH VALUE FOR SAME DATA .
  
}


