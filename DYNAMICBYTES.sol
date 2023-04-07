//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract DYNAMICbytes{
   bytes public laksh;

   constructor(){
       laksh = "123jdh2"; //s: 0x3132336a646832
   }
    // push
    function pushe()public{
        laksh.push("l"); // output  : 0x3132336a6468326c
    }
    //pop
    function pope()public{
        laksh.pop(); //  output : 0x3132336a646832
    } 
    function getlen()public view returns(uint){
        return laksh.length;
    }
      // asking user what indx val they want to get// 
    function getindx(uint _indx)public view returns(bytes1){
        return laksh[_indx];  //  0x64  (: 0x3132336a646832)
    }
  
}