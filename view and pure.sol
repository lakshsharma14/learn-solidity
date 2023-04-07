//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract viewandpure{
    uint public age = 20;
    
    function view1()public view returns(uint){
        return age;
    }

    function pure1()public pure returns(uint){
     return 1;
    }

    function pure2(uint _x)public pure returns(uint){
        return _x;
    }
    function simp1()public {
       age = age+10;
    }

    function dummy()public view returns(uint){
        return  age+10;
    }


}