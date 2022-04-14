// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.13;

contract ERC20{
    string public name;
    mapping(address=>uint)public balance;
    constructor(string memory _name) public{
        name=_name;
    }

    function mint()public{
    balance[tx.origin] ++;
    }  
}

contract Exchange is ERC20{
     string public symbols;
     address[] public owners;
     uint256 ownercount;

     constructor(string memory _name,string memory _symbol) ERC20 public{
        symbols=_symbol;
     }
  
    function mint()public{
        super.mint();
        ownercount++;
        owners.push(msg.sender);
    }

}
