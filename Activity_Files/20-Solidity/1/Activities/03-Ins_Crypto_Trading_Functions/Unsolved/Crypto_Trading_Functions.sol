/*
#Background

* Say that you’re a famous crypto trader who wants to publish your latest buy order, including the price that you paid.

* A buy order refers to the action of buying a certain amount of financial assets. In this case, we’re referring to buying cryptocurrencies.

* Explain that to prove that you made a cryptocurrency purchase at the execution price, you want to build a smart contract that publishes your latest trade to the blockchain. The execution price is the price at which the trade was executed.

* Identify that defining a function it is needed to enable a smart contract to interact with the blockchain or even with other smart contracts. The function captures the business rules that we want to implement. As we did in Python, we can define functions in Solidity—but with some nuances, as we’ll learn next.

1. Ensure that the pragma verison for the solidity compiler is verision 5.

2. Name the smart contract named `LatestTrade`.

3. Add the following data to the contract coin type as a `string` called "BTC", a number refered to as `uint` called `price`, 
and an identifier as a `bool` for boolean to ensure it is a buy order call it `isBuyOrder`.

4. Add  a `function` named `updateTrade`. This function will update the trading price of our last buy or sell operation.

/*