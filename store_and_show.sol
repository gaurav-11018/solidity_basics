pragma solidity 0.6.0;
contract SimpleStorage{
    uint storenum;
     function store(uint num)public{
    storenum=num;
     }
    function show()public view returns(uint){
    return storenum;
    }
}
