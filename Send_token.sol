// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.13;
contract Exchange{
    mapping(address=>uint)public balance;
    address payable wallet;

   event Purchase(
       address indexed_buyer,
       uint _wallet
  );
    
    constructor(address payable _wallet) public{
        wallet = _wallet;
     }
    
    function fallback() external payable{
     buytoken();
    }

    function buytoken() public payable{
    balance[msg.sender]+=1;
    wallet.transfer(msg.value);
    emit Purchase(msg.sender,1);
   } 

}
