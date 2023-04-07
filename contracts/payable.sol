//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Payable{
                                // this address shoud be typecasted as payble if want to send eth//
    address payable public owner = payable(msg.sender);

    // constructor()payable{
    //     we can send at the time of deploying contract one time 
    //      if we want to send eth on smart contract we will use constructor not function
    // }
     
     function sendether() payable public{ // payable can call more than one time

     }
     function checkbal()public view returns(uint){
         return address(this).balance; // check balance function of contract payable
     }  

}   // red colour buton is transaction function