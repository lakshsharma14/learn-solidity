//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;




    contract A{

        event log(string name,uint age);
        function fun1()public virtual{
            emit log("A.fun1",23);
        }
        function fun2()public virtual{
            emit log("A.fun2",23);
        }

   } 


    contract B is A{
         function fun1()public virtual override{
            emit log("B.fun1",22);
            A.fun1(); // direct calling function from child to parent . specify to go in contract A AND CALL FUN1()
        }
        function fun2()public virtual override{
            emit log("B.fun2",22);
            super.fun2();//"0": 
            //"A.fun2",            transaction log output
			// "1": "23",
			// "name": "A.fun2",
			// "age": "23"
        }

  } 

   contract C is A{
         function fun1()public virtual override{
            emit log("c.fun1",21);
        }
        function fun2()public virtual override{
            emit log("c.fun2",21);
        }

   } 

     contract D is B,C{

          function fun1()public override(B,C){
            emit log("D.fun1",20);
            B.fun1();
        }
        function fun2()public override(B,C){
            emit log("D.fun2",20);
            super.fun2();
        }
   }                        // important
    //  "0": "c.fun2",    super.fun2() (B,C) inheritance order than we are getting c.fun2()
                    //    super .fun2()  (C,B) inheritance order than we are getting b.fun2()         
	// 		"1": "21",    
	// 		"name": "c.fun2",
	// 		"age": "21"