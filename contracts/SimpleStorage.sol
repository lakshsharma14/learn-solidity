//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract SimpleStorage{

    
    uint256  favoriteNumber;

    mapping(string => uint256) public nameTOfavoriteNumber;

    struct People{
        uint256 favoriteNumber;
        string name;
    }
   
    People[] public people;

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }
// view  function,retrieve just reading the fav number //

    function retrieve() public view returns (uint256){
        return favoriteNumber;
    } 
    // call data, memory,storage//
    function addPerson(string memory _name,uint256 _favoriteNumber) public{
     people.push(People(_favoriteNumber,_name));
     nameTOfavoriteNumber[_name] = _favoriteNumber;
    }       
} 





//0xd9145CCE52D386f254917e481eB44e9943F39138