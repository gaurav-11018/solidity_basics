// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.13;
contract Exchange{
    mapping(address=>uint)public balance;
    address payable wallet;
    
    
    constructor(address payable _wallet) public{
        wallet = _wallet;
     }
    
function buytoken()public payable{
    balance[msg.sender]+=1;
    wallet.transfer(msg.value);
   } 

}
