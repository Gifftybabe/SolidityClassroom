//SPDX-Licence-Identifier: MIT;
pragma solidity ^0.8.27;

contract StructDemo {


// Struct

 struct Student {
    string name;
    uint matNo;
    bool pass;
}

/* Student public student;


function insertDetail(string memory _name, uint _matNo, bool _pass) public {


    student.name = _name;
    student.matNo = _matNo;
    student.pass = _pass;

//  student = Student(_name, _matNo, _pass); //We can also use this instead of the above
}

function fetchDetails()public view returns(Student memory ) {
    return student;
}

function fetchDetail()public view returns(string memory _name) {
    return student.name;
}

*/



// Array struct


//Fixed array struct
/* Student[4] public student;
function insertDetails(uint index, string memory _name, uint _matNo, bool _pass) public {
    student[index] = Student(_name, _matNo, _pass );
}

function fetchDetails(uint index) public view returns(Student memory) {
    return student[index];
}
*/

// Dynamic array struct
Student[] public student;

function insertDetail(string memory _name, uint _matNo, bool _pass) public  {
    student.push(Student(_name, _matNo, _pass));
}

function fetchDetails() public view returns(Student[] memory, uint) {
    return (student, student.length);
}
}


