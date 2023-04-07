//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Events{
     event balance(address account,string message,uint value); // data type event 

     function setval(uint _val)public{             
	
         emit balance(msg.sender,"has value",_val);
        // this is how data store in blockchain
        //  	"from": "0xD4Fc541236927E2EAf8F27606bD7309C1Fc2cbee",
		// "topic": "0x3028aee09e5f7149e98b3f7f8faa7e2cc5b353de720db250726b7c64d38b5f9c",
		// "event": "balance",
		// "args": {
		// 	"0": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
		// 	"1": "has value",
		// 	"2": "89",
		// 	"account": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
		// 	"message": "has value",
		// 	"value": "89"
     }
}


    contract chatapp{

        event chat(address _from,address _to,string _msg);

       function chatap( address to_,string memory msg_ )public{
           emit chat(msg.sender,to_,msg_);
       }
    }
    // output 0": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
			// "1": "0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2",
			// "2": "hey lakshay here",
			// "_from": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
			// "_to": "0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2",
			// "_msg": "hey lakshay here"