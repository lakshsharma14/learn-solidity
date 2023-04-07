//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

 contract revert_assert{

         address public owner = msg.sender;
          uint public age = 25;
        //  function checkrequire(uint _x)public{
        //  age = age+5;
        //  require(_x>2,"value of x is less than 2");
        //  }

        // this function is only acces by the smart contract owner
         error ownererror(string);
         function onlyowner()public{
         if(owner!=msg.sender){
         revert ownererror("you are the owner");
         }
         age=age-2;
         }

         // in revert we check condition with if else//
         // we can use custom error in revert//
         error throwerror(string,address);
          function checkrevert(uint _x)public{
             age = age+5;
             if(_x<2){
            revert throwerror("value of x is less than 2",msg.sender);// custom error for saving are gas cost//
                                                         // now we can know which acc hit this function with error
                                                                  
         }
        
         }

         // ASSERT//
         function checkownership()public view{
             assert(owner==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
         }
     
         }
