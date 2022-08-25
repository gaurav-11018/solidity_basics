# Self destruct

--Example of Self Destruct in Solidity--
 
# What is Self Destruct?
Contracts can be deleted from the blockchain by calling selfdestruct. Selfdestruct sends all remaining Ether stored in the contract to a designated address.

Vulnerability
A malicious contract can use selfdestruct to force sending Ether to any contract.

Lets understand this by an example:

# VULNERABLE CONTRACT:
![cd](https://user-images.githubusercontent.com/79459872/186548094-42ae0659-1016-40e7-8b29-2c323c3111e9.png)

# ATTACK CONTRACT:![at](https://user-images.githubusercontent.com/79459872/186548147-0cd87f7b-c3df-441f-ab91-8dd999f74c8e.png)

# Preventative Techniques:![cd-improved](https://user-images.githubusercontent.com/79459872/186548177-bd24f065-023e-4da9-a92a-e63b29986149.png)

MORAL OF THE STORY:

*Don't rely on address(this).balance*
