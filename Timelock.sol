
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.8;

contract timelock{
    address payable public beneficiary;
    uint public releasetime;

    constructor(address payable _beneficiary,uint _releasetime) public payable{
        require(_releasetime > block.timestamp);
        beneficiary=_beneficiary;
        releasetime=_releasetime;
    }

    function release() public{
        require(block.timestamp >= releasetime);
        address(beneficiary).transfer(address(this).balance);
    }
}
