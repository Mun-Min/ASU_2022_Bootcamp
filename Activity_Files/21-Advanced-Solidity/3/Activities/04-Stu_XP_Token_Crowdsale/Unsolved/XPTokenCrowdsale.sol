/*
XP-Token Crowdsale
*/

// @TODO: Add the pragma statement
pragma solidity ^0.5.5;

// @TODO: Add the import statement for the `XPTokenMintable.sol` file
// @TODO: Add the import statements for the OpenZeppelin `Crowdsale` contract.
// @TODO: Add the import statements for the OpenZeppelin `MintedCrowdsale` contract.
import "./XP_Token_Mintable_Activity04.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";


contract XP_TokenCrowdsale is Crowdsale, MintedCrowdsale {

    // @TODO: Create a `constructor` function that includes three attributes: `rate`, `wallet` and `token`.
    constructor(
        uint rate,
        address payable wallet,
        XP_Token token
    )

    // @TODO: Create the public `Crowdsale` constructor that takes in the same three attributes: `rate`, `wallet`, and `token`.
        Crowdsale(rate, wallet, token)
        public

    // @TODO
    {
        // constructor body can stay empty
    }
}


contract XP_TokenCrowdsaleDeployer {

    // @TODO: Add public addresses to keep track of the token_address and arcade_sale_address
    address public XP_Token_address; 
    address public XP_Token_crowdsale_address;
    constructor(
        string memory name,
        string memory symbol,
        address payable wallet // this address will receive all Ether raised by the sale

    )
        public
    {
        // @TODO: create the XP_Token and its address
        XP_Token token = new XP_Token(name, symbol);
        XP_Token_address = address(token);

        // @TODO: create the XP_TokenCrowdsale and its address
        XP_TokenCrowdsale XP_Token_crowdsale = new XP_TokenCrowdsale(1, wallet, token);
        XP_Token_crowdsale_address = address(XP_Token_crowdsale);

        // @TODO: make the XP_TokenCrowdsale contract a minter, then have the XP_TokenCrowdsaleDeployer renounce its minter role
        token.addMinter(XP_Token_crowdsale_address);
        token.renounceMinter();
    }
}
