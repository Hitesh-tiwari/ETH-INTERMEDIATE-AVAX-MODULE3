// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    address private _owner;

    constructor() ERC20("Hitesh Token", "HT") {
        _owner = msg.sender;
    }

    modifier onlyOwner() {
        require(
            msg.sender == _owner,
            "The contract owner can only call this function"
        );
        _;
    }

    function mint(address acc, uint256 amt) external onlyOwner {
        _mint(acc, amt);
    }

    function burn(uint256 amt) external {
        _burn(msg.sender, amt);
    }

    function transfer(
        address recipient,
        uint256 amt
    ) public override returns (bool) {
        _transfer(_msgSender(), recipient, amt);
        return true;
    }
}
