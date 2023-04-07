//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

  contract fallback_recive{
       
       event log(string _fun,address _sender,uint _val, bytes _data);

     fallback()external payable{ // if we send data + eth than it will go in fallback
                     // if we have fallback only in our contract than eth will go in fallback if u send data or not
        emit log("fallback",msg.sender,msg.value,msg.data);             
      }                          
     receive() payable external{ // if we send only eth than it will go in recive
      emit log("Receive",msg.sender,msg.value,""); 
     }

      function getbal()public view returns(uint){
          return address(this).balance; // 1000000000000000000 one eth
      }
  }


