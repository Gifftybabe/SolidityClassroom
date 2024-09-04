//SPDX-License-Identifier: MIT;

pragma solidity ^0.8.27;

contract SendETH {
    
//Transfering Ether
//Sending ether to a contract address
/*function sendEtherToContract() public payable {

}
//checking a contract address balance
function checkContractBalance() public view returns(uint) {
    return address(this).balance;
}
*/
// sending ether to an EOA account
function sendETH(address payable _address) public payable {
    _address.transfer(msg.value);
}