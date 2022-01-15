pragma solidity 0.6.0;
contract SimpleStorage{
    uint storenum;
    bool storename;

    struct People{
        uint storenum;
        string name;
    }
     
     People[] public people;
     mapping(string=>uint) public mapped;


     function store(uint num)public{
    storenum=num;
     }
    function show()public view returns(uint){
    return storenum;
    }

    function addperson(string memory name,uint storenum)public{
        people.push(People(storenum,name));
        mapped[name]=storenum;
    }

}
