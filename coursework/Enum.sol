//SPDX-License-Identifier: MIT;

pragma solidity ^0.8.27;

contract Enum {
    enum Button{ON, OFF}
Button public button;

function checkStatus() public view returns(Button) {
    return button;
} 
function updateStatus(Button _x) public {
    button = _x;
}
function confirmStatus(Button) public view returns(string memory) {
    if(button == Button.ON) {
        return 'Button is On';
    }else {
        return 'Button is Off';
    }
}
}