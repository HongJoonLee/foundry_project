// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// A simple ERC20 token called Andrew with symbol AK
contract AndrewCoin is ERC20 {
    constructor(uint256 initialSupply) ERC20("AndrewCoin", "AC") {
        // Mint 1 million tokens to the deployer (msg.sender)
        _mint(msg.sender, initialSupply);
    }
}
