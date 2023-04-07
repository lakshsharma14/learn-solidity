//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract A{
    uint private x=10;// within contract level//
    uint internal y=100;// within the contract and child contract
    uint public z=1223; // everywhere


    function check1() private pure returns(string memory){
        return "private";
    }
    function check2()internal pure returns(string memory){
        return "internal";
    }
    function check3() external pure returns(string memory){
        return "external";
    }
    // function checkall() public view returns(string memory){
    //     return check1();
    // }
} 


contract b is A{
    string public a = check2();
     
}

contract c{
    A obj = new A(); // creating object
    uint public a = obj.z();
    function anothercaller()public view returns(string memory){
        return obj.check3();
    }
}

