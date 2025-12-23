// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract BurnableToken is ERC20Burnable {
    constructor(uint256 supply) ERC20("Burnable Token", "BRN") {
        _mint(msg.sender, supply * 10 ** decimals());
    }
}