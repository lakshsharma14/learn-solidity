//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract sendeth{
      // making a state varuable address type and typecast acc tho payable
    // address payable public getter =  payable (0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

     // making payable to this smart contract with recive function//
     receive() external payable{} //  receive will always be external and payable does it only take eth

     function checkbal()public view returns(uint){ // this function is for checking balance 
       return address(this).balance;                // shows balance in wei form  5000000000000000000 (5eth)

     }
     // send function with require// no use mostly
      
      event log(uint value);

     function SEND(address payable getter)public payable{
       emit log(msg.value);
     bool sent = getter.send(msg.value);
     require(sent,"transaction has failed"); // we have to return bool value
     }

     // transaction function // less use
     function TRANSFER(address payable getter)public payable{
         getter.transfer(msg.value);
     }

     // call funtion/
     function CALL(address payable getter)public payable{
        (bool sent,)= getter.call{value:msg.value}("");
        require(sent,"transaction has failed");
     }
  }

  // sending eth to another contract with contract sendeth//

   contract another{
      receive() external payable{}
 
   function getethh()public view returns(uint){
     return address(this).balance;
   }

   }


 