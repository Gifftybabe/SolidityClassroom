// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DataLocation {
      // data location

   /* uint[5] public arr;

    function insertArr(uint[5] memory _arr) public {
        arr = _arr;
    }

    function returnArr() public view returns(uint[5] memory _arr, uint) {
        return (arr, arr.length);
    }
*/

uint[5] public arr = [10, 20, 30, 40, 50]; //A sate variable automatically storeed in the storage area of the block chain

function fmemory () public view {
    uint[5] memory arr1 = arr; // A local variable arr1 stored in the memory area of the blockchain which is limited to the lifetime of the function call and it's assigned to the value of the state variable but only copies the value but make no reference to it
    arr1[0] = 90;
}

function fstorage () public {
    uint[5] storage arr2 = arr; // A local variable stored in the storage area of the blockchain which serves as a pointer to the state variable and a reference to it 
    arr2[0] = 90;
}

}