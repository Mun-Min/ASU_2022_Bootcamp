pragma solidity ^0.5.0;

contract IfElse {
    uint y;

    function exampleIfElse(uint x) public {
        if (x < 10) {
            y = 0;
        }
        else if (x < 20) {
            y = 1;
        }
        else {
            y = 2;
        }
    }
}