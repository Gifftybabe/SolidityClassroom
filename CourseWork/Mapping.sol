//SPDX-License-Identifier: MIT;

pragma solidity ^0.8.27;

contract Mapping {
    // Mapping
/*This deals with a key value pair i.e mapping a unique data type to a value data type. E.g to map the roll number of a student to his/her name*/
 mapping(uint => string) data;

 function insertData(uint _rollNo, string memory _name) public {
    data[_rollNo] = _name;
 }
function getData(uint _rollNo) public view returns(string memory) {
    return data[_rollNo];
}

/ Mapping with struct

struct Student {
    string name;
    uint rollNo;
    bool pass;
}
mapping(uint => Student) studentDetails;

function insertDetails(string memory _name, uint _rollNo, bool _pass) public {
    studentDetails[_rollNo] = Student(_name, _rollNo, _pass);
}
function fetchDetails(uint _rollNo) public view returns(Student memory) {
    return studentDetails[_rollNo];
}
}