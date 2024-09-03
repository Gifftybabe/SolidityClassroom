//SPDX-Licence-Identifier: MIT;
pragma solidity ^0.8.27;

contract StructDemo {

// Struct

struct Student {
    string name;
    uint matNo;
    bool pass;
}

Student public student;


function insertDetail(string memory _name, uint _matNo, bool _pass) public {
    student.name = _name;
    student.matNo = _matNo;
    student.pass = _pass;

}

function fetchDetails()public view returns(Student memory ) {
    return student;
}

function fetchDetail()public view returns(string memory _name) {
    return student.name;
}

}
