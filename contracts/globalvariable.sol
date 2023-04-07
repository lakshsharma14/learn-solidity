//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract globalvariable{
address public newAdd = msg.sender;
uint public time = block.timestamp;
uint public diffi = block.difficulty;
uint public gascost = tx.gasprice;
}