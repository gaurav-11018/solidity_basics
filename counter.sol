ragma solidity 0.5.1;

 contract Counter{
     uint public count=0;
    
 
    event Increment(uint value);
    event Dec(uint value);

 function getCount() view public returns(uint){
    return count;
 }
     function increment()public{
         count=count+1;
       emit Increment(count);
       
     }
     function dec()public{
         count-=1;
         emit Dec(count);
     }


 } 
