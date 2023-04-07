//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;



contract A{

    uint public x = 101;
    address public owne = msg.sender;

    function fun1()public pure returns(string memory){
    return "im in contract a";
    }
    function fun2()public pure returns(string memory){
    return "im in contract a";
    }
    function fun3()public pure virtual returns(string memory){
    return "im in contract a";
    }
    function fun4()public pure virtual returns(string memory){
    return "im in contract a";
    }
}

contract B is A{
     function fun3()public pure override returns(string memory){
    return "im in contract b";
    }
    function fun4()public pure virtual override returns(string memory){
    return "im in contract b";
    }

}

contract C is B{
    function fun4()public pure override returns(string memory){
    return "im in contract c";
    }   

}