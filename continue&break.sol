//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract CONTINUEBREAK{
         function CONTINUE()public pure returns(uint){
             uint count= 0;


           for(uint i=0;i<10;i=i+2){
               
               if(i==8){
                   continue; // break;
               }
            
            count=count+5;
           }

           return count;
         }
} 