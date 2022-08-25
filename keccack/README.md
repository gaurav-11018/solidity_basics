# keccack

--Keccack in Solidity--

Here is a detailed example that explains the functionalities of keccack and why it is used:


# What is Hashing with Keccak256?

The keccak256 algorithm computes the hash of an input to a fixed length outputThe input can be a variable length string or number, but the result will always be a fixed bytes32 data type. It is a one-way cryptographic hash function.

Some use cases are:

-> Creating a deterministic unique ID from a input
-> Commit-Reveal scheme
-> Compact cryptographic signature (by signing the hash instead of a larger input)


Basic Hashing Principle:

Provided an input of a string, for example “Hello World”, and pass it into a hash function using keccak256. The result would be:

Hello World -> keccak256 -> 
592fa743889fc7f92ac2a37bb1f5ba1daf2a5c84741ca0e0061d243a2e6707ba

# Example of keccak used in contract:![keccak](https://user-images.githubusercontent.com/79459872/186553175-f1b8efab-f38b-461f-9d2f-cb92bc29aa07.png)

# COLLISIONS:
A collision can occur when two different inputs produce the same output. That may sound impossible, but it can happen in the least expected manner. Take for example the following inputs:

(AAA, BBB) -> AAABBB       

(AA, ABBB) -> AAABBB

  ![keccak-collision](https://user-images.githubusercontent.com/79459872/186553259-c87a6680-93fe-47a9-a55f-966a4d3c2824.png)
  
 # Preventing Collisions:

There is also a more complex technique for encoding called abi.encode. The abi.encodePacked function was meant to be simpler and more compact for encoding data. The abi.encode function can be useful when it comes to preventing collisions in hash functions.So if there is likelihood of inputs resulting in outputs that can cause a collision it is recommended to use abi.encode instead of abi.encodePacked.
![collision sol](https://user-images.githubusercontent.com/79459872/186553374-ac04f5d0-757c-46ff-b15a-036bbed09e6e.png)


