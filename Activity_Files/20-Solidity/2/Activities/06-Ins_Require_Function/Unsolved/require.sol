pragma solidity ^0.5.0;

contract BankAccount {
    address payable accountOwner = 0xc3879B456DAA348a16B6524CBC558d2CC984722c;

    function withdraw(uint amount, address payable recipient) public {
        if (recipient == accountOwner) {
            return recipient.transfer(amount);
        }
    }

    function deposit() public payable {}

    function() external payable {}
}
