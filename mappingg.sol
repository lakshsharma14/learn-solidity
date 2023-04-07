//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract maping{

    mapping(uint=>string) emp_id;

    function setid()public{
        emp_id[1]="lakshay";
        emp_id[2]="sharma"; 
        emp_id[4]="dwec";
        emp_id[6]="fff";
        emp_id[3]="ffrfr";
    }

    function getid()public view returns(string memory){
        return emp_id[1];
    }
    // function getidd(uint _id)public view returns(string memory){
    //     return emp_id[_id];
    // }
    function get(uint _id)public view returns(string memory){
        return emp_id[_id];
    }
}