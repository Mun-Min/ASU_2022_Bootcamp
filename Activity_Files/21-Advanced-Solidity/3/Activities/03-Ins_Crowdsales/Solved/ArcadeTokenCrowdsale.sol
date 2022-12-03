pragma solidity ^0.5.0;

import "./ArcadeTokenMintable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";

contract ArcadeTokenCrowdsale is Crowdsale, MintedCrowdsale {
    constructor(
        uint rate,
        address payable wallet,
        ArcadeToken token
    )
        Crowdsale(rate, wallet, token)
        public
    {
        // constructor body can stay empty
    }
}

contract ArcadeTokenCrowdsaleDeployer {
    address public arcade_token_address;
    address public arcade_crowdsale_address;

    constructor(
        string memory name,
        string memory symbol,
        address payable wallet
    )
        public
    {
        ArcadeToken token = new ArcadeToken(name, symbol, 0);
        arcade_token_address = address(token);

        ArcadeTokenCrowdsale arcade_crowdsale = new ArcadeTokenCrowdsale(1, wallet, token);
        arcade_crowdsale_address = address(arcade_crowdsale);

        token.addMinter(arcade_crowdsale_address);
        token.renounceMinter();
    }
}
