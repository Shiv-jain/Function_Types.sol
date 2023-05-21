// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Function_Types{
    address payable public owner = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    uint balance = 100;


    // View Function - Only Reads Balance from Blockchain 
    function showBalance() internal view returns(uint){
        return balance;
    }


    // Pure Function - Neither Reads nor Writes 
    function sum(uint _a , uint _b) internal pure returns(uint){
        return _a + _b;
    }


    // Payable Function - Used to Receive Crypto
    function getBalance () external payable returns (uint) {
        return address(this).balance;
    }

}