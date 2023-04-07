//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract loopss{
    


    function LOOP()public pure returns(uint){
        uint count = 0;
        for(uint i=0;i<10;i=i+2){
            count = count+5;
        }
        return count;
    }



}



   // while loop//
    //     uint j = 0;
    //     while(j<10){
    //         count = count+5;
    //         j = j+2;
           
    //     }
    //     return count;
    // }

    //  }
            

            // do while loop//
            //do{
                //   count = count+5;
             //    j = j+2;

                // }while{j<10};