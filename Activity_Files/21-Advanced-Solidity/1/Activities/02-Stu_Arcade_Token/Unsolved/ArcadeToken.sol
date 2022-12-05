/*
Arcade Token
*/

// Construct your ArcadeToken contract below:

pragma solidity ^0.5.17;

contract MuniToken {
    // variable declaration 
    address payable owner = msg.sender; 
    string public symbol = "MUNI"; 
    uint public exchange_rate = 10000; 

    // "mapping" is a data structure that is used to store and manage data on the blockchain
    // address (key) uint (value) 
    mapping(address => uint) balances; 

    // check contract balance
    function balance() public view returns(uint) {
        return balances[msg.sender]; 
    }
    
    // transfer funds 
    function transfer(address recipient, uint value) public {
        balances[msg.sender] -= value; 
        balances[recipient] += value; 
    }

    // add a way for customers to purchase new tokens 
    function purchase() public payable {
        uint amount = msg.value * exchange_rate; 
        balances[msg.sender] += amount; 
        owner.transfer(msg.value); 
    }

    // add a way for the business owner to be able to create new tokens 
    function mint(address recipient, uint value) public { 
        require(msg.sender == owner, "You do not own this contract!"); 
        balances[recipient] += value; 
    }
}