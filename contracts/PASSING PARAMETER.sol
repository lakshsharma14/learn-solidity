//SPDX-License-Identifier:MIT

pragma solidity^0.8.0;

     contract A{

     uint public age;
     string public name;

      constructor(string memory _name,uint _age){
        name = _name;
        age = _age;
     }
     } 
     contract B{
     uint public salary;
     string public add;

     constructor(string memory _add,uint _sal){
         add = _add;
         salary = _sal;
     }
     }
       // order of execution
       //1 A,B 
       //2 THAN C OWN CONSTRUCTOR 
      contract C is A("lakshay",23),B("jaipur",10000){
      
     }  
       // order of execution will go as order of inheritance
       //1 B,A 
       //2 THAN D OWN CONSTRUCTOR 

       contract D is B,A{
       constructor()A("lakshay",23)B("jaipur",10000){

       }
     }
     // passing dynamic value in constructor with multiple parents
     contract E is A,B{
     constructor(string memory _name,uint _age,string memory _add,uint _sal)A(_name,_age+2) B(_add,_sal){

     }
     }

     // passing values in bothh static type and constuctor
    
         contract F is A("LAKSHAY",34),B{
         constructor(string memory _add,uint _sal)B(_add,_sal){

         }

     }