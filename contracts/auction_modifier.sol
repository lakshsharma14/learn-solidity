//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;


contract AUCTION{


     address public owner = msg.sender;

      modifier onlyOwner{
      require(owner==msg.sender,"you are not the owneer"); // setting function access to only owner with modifier
      _;
     }
     
     function startAUCTION()public view onlyOwner{
        

     }

     function stopauction()public view onlyOwner{

     }

     function checkstatus()public view onlyOwner{

     }

     uint public age = 30;

     modifier temp(uint _x){ // taking function parameter with modifier
     age = age+_x;           // input validiation
     _;
     }

     function changeage(uint _y)public  temp(_y) { // adding modifier to function
         
     }

}   
