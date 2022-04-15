
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract escrow{

    address agent;
    mapping(address=>uint256) public deposits;

    modifier onlyAgent() {
        require(msg.sender==agent);
        _;    
    }
     constructor() public{
         agent=msg.sender;
     } 
    function deposit(address payee)public onlyAgent payable{
        uint amount =msg.value;
        deposits[payee]=deposits[payee] + amount;
    }
    function withdraw(address payable payee)public onlyAgent {
        uint payment=deposits[payee];
        deposits[payee]=0;
        payee.transfer(payment);
    }


}
