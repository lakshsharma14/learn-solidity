//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract STRUCT{
    
    struct Emp{  // Emp is user define data type struct
        string name;
        uint age;
        address acc;
    }
    // state variable of struct datatype
     Emp public emp;
    //  constructor(string memory _name,uint _age,address _acc){
    //      emp.name= _name;
    //      emp.age=  _age;
    //      emp.acc= _acc;
    //  }

      // array with struct datatype
     Emp[] public emps;

     function setval()public{
        Emp memory emp1 = Emp("laksh",23,0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
       
       Emp memory emp2 = Emp({name:"laksh",age:22,acc:0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db});

        Emp memory emp3;
        emp3.name="gogu";
        emp3.age= 23;
        emp3.acc=msg.sender;
        
        emps.push(emp1);
        emps.push(emp2);
        emps.push(emp3); 

      // updating 1 index value in array
      Emp storage emp_temp=emps[1];
      emp_temp.age=21;  // storage is related refrence type - holds addres were value is kept
     
     // deleting values in emps array
   //  delete emp_temp.acc;
   // delete emps[2];

         
 // Emp public emp; updating values of state variable emp; we cant update value on contract level
    //  Emp storage emp_tem=emp;   // 
    //      emp_tem.name="jojo";
     }
    
}