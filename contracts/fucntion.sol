//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract fucntion{
  uint age = 20;

    function addxy(uint _x,uint _y)public pure returns(uint){
        return _x+_y;
    }

    function changeage()public {
        age+=1;
    }

    function getage()public view returns(uint){
        return age;
    }
    function inter()internal{
        
    }
}

// outside contract function
// we cant chamge visibility of outside function // by default internal
function dummy(uint _x)pure returns(uint){
    return _x*10;
}

