//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract ternary{

    function ter(uint _x)public pure returns(string memory){
        string memory val;

    //  if(_x>100){
        //    val = "greater";
      //  }
       
      //  else{
       //     val = "ewual or smaller";
     //   }

    val = _x>100? "greater":"smaller or equal too";
    return val;
    }
  
}
  