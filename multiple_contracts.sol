// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.13;

contract ERC20{
    string public name;
        mapping(address=>uint)public balance;

    function mint()public{
    balance[tx.origin] ++;
    }  
}

contract Exchange{
    address payable wallet;
    address public token; 
  
    
    constructor(address payable _wallet,address _token) public{
        wallet = _wallet;
        token=_token;     
     }
    
    function fallback() external payable{
     buytoken();
    }

    function buytoken() public payable{
     ERC20(address(token)).mint();
     wallet.transfer(msg.value);
   } 

}
