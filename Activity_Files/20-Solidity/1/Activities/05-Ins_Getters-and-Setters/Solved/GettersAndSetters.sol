pragma solidity ^0.5.0;

contract LatestTrade {
    string coin = "BTC";
    uint256 price;
    bool isBuyOrder;

    function updateTrade(string memory newCoin, uint256 newPrice, bool isBuy) public {
        coin = newCoin;
        price = newPrice;
        isBuyOrder = isBuy; // Is this a buy or a sell order?
    }
}
