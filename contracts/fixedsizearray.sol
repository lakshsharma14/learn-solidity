//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Fixedsizearrays{
     uint[5] arr;

     constructor(){
       arr=[1,2,3,4,5];
     }
      
     // returing array with function

     function getarray() public view returns(uint[5] memory){
       return arr;
     }



       // creating array with function//
     
    //  function arrayinfunction()public pure returns(uint){
    // uint[] memory Arrmema = new uint[](3);
    //    Arrmema[1]=30;
    //    return Arrmema[1];

    //  }

        

     // array wtih for loop//

      // function arraywithloop(uint _x)public{
      // for(uint i=0;i<arr.length;i++){
      //   arr[i]=_x+i;
      // }
      // }
   
 

     //  function Array()public view returns(uint){
        // uint temp;
         
        //  // gettin index value
        //   temp = arr[3];

        // //  //updateing index value
        //   arr[3]=300;

        //  //deleteing index value
        //   delete arr[2]; // it will set to by default value uint = 0; default value

          // getting length of arr
          // uint len = arr.length;
          // return len;

      // }

}