//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract A{
    uint public a;
    constructor(){
        a=11;
    }
    function geta()public{
        a=12;
    }

    function fun()public pure virtual returns(string memory){
        return "im in a";
    }
}


contract B is A{
    uint public b;
    constructor(){
     b=11;
    }
    function geta1()public{
        b=12;
    }
    function fun()public pure virtual override returns(string memory){
        return "im in b";
    }

}    // passing function in multiple inheritance using virtual,override(A,B)
contract C is A,B{

    function fun()public pure virtual override(A,B) returns(string memory){ 
        return "im in c";
    }

}

contract D is A,B,C{
     function fun()public pure  override(A,B,C) returns(string memory){ 
        return "im in D";
    }

}
   
