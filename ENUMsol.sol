//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract ENUM{

    enum Status{  // now Status is user define datatype
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancel    // no , this here
    }

    Status status;   // Status is state variable     Status is user define datatype S  CAPITAL

     function getstatus()public view returns(Status){ // why  Status it is  a datatype now.status variable of dataype
         return  status;
     }  // by default value of 0. boolean - false - 0  // output 0


     function setstatus(Status _status)public{  // modifying state variable status) 
         status = _status;                      // taking Status parameter from user
     }                                          // input given by user is 2 -Accepted,


     function rej()public{     
         status=Status.Rejected; //   output 3 -Rejected,
     }

     function delstatus()public{
        delete status; // output 0- Pending,
     }


        
}