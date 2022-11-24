pragma solidity ^0.5.0;

contract MsgTest {
    uint public balance = 0;
    address public msgSender;
    uint public msgValue;

    function deposit() public payable {
        balance = address(this).balance;
        msgSender = msg.sender;
        msgValue = msg.value;
    }
}
