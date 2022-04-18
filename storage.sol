// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;


contract Storage{
uint256  storenum;


function set(uint256 x) public{
   storenum=x;
}

function get() view public returns(uint){
   return storenum;
}
}
