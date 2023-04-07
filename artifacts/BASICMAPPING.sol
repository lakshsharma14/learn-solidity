//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract basicmapping{

    mapping(uint=>string) public emp_ids;

    function setids() public{
        emp_ids[31]="lakshay";
        emp_ids[14]="lolu";
        emp_ids[22]="bhr";
        emp_ids[33]="hjdbjds";
    }
    function getids(uint _id) public view returns(string memory){
        return emp_ids[_id];
    }
}