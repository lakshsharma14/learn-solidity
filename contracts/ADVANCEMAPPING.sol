//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

 struct donor_dts{  // donor_dts making user define  data type with struct 
                    // file level
  string name;
  uint age;
  string add;
  uint don;

 }

contract advmapping{
    mapping(address=>donor_dts)public acc_info;  // address=>donor_dts 

    function set(string memory _name,uint _age,string memory _add,uint _don)public{

        acc_info[msg.sender] =donor_dts(_name,_age,_add, acc_info[msg.sender].don +_don);
    }

    function del_info()public{
        delete acc_info[msg.sender];
    }
}