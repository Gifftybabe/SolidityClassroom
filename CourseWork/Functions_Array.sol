
// SPDX-License-Identifier: MIT
pragma solidity >= 0.7 < 0.9;

contract Functions_Array {
     /*  uint public num;

     function setter(uint _num) public {
        num = _num;
    }

    function getter() public view returns(uint){
        return num;
    }
    */

    // Conditional statements
    /* function ifChecks(uint a, uint b) public pure returns(uint){
        if (a > b) {
            return 1;
        } else if (a == b) {
            return 2;
        } else {
            return 0;
        }
    }
    */

    // Require Statement
    /* function isZero(uint a) public pure returns(bool) {
        require(a == 0, 'Not equal to zero');
        return true;
      
    }
    function isZeroIf(uint a) public pure returns(bool) {
        if(a == 0) {
            return true;
        }
        revert('Not zero');
    }
    */

    // Modifiers

    /* modifier isTrue(uint a) {
       require(a%2 == 0, 'Not true');
       _; 
    }
    function f1(uint a) public pure isTrue(a) returns (uint) {
        
        return 1;
    }

      function f2(uint a) public pure isTrue(a) returns(uint) {
       
        return 2;
    }

      function f3(uint a) public pure isTrue(a) returns(uint) {
       
        return 3;
    }
    */

    // Arrays
    // Fixed Array
    /* uint[5] arr;
    function insert(uint index, uint _item) public {
        arr[index] = _item;
    }
    function returnArr(uint index) public view returns(uint) {
        return arr[index];
    }

    function returnAllArrElements() public view returns (uint[5] memory) {
        return arr;
    }
    */

    // Dynamic Array
    uint[] public arr;

    function setArray(uint _item) public {
        arr.push(_item);
    }


    function getArr() public view returns (uint[] memory){
        return arr;
    }

    function removeLast() public {
        arr.pop();
    }

    function arrLength() public view returns(uint){
        return arr.length;
    }


}