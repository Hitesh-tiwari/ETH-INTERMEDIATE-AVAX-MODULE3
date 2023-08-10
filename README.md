# Token Contract with ERC20 Standard README

## Description
The `Token` contract is a Solidity smart contract that implements the ERC20 token standard. This contract extends the functionality of the OpenZeppelin ERC20 implementation to create a token named "Hitesh Token" with the symbol "HT". The contract includes features like minting, burning, and transferring tokens, along with a custom access control mechanism using a modifier.

## ERC20 Token Standard
The ERC20 token standard is a widely adopted standard for fungible tokens on the Ethereum blockchain. It defines a set of functions and events that allow smart contracts to interact with and manage token balances and transfers.

## Contract Overview

### Public Variables
1. `name`: A public string variable representing the name of the token.
2. `symbol`: A public string variable representing the symbol (abbreviation) of the token.

### Private Variable
1. `_owner`: A private address variable representing the address of the contract owner.

### Constructor
The constructor initializes the token's `name` and `symbol` using the ERC20 constructor from the OpenZeppelin library. Additionally, it sets the `_owner` variable to the address of the deployer (msg.sender).

### Modifier
1. `onlyOwner`: A custom modifier that restricts certain functions to be called only by the contract owner. It uses the `require` statement to verify the sender's address and only allows the function to execute if the sender is the owner.

### Functions

#### 1. `mint(address acc, uint256 amt) external onlyOwner`
This function is used to mint (create) new tokens and assign them to a specified address. It takes two parameters: `acc`, representing the address to which the tokens will be minted, and `amt`, representing the number of tokens to be created. This function can only be called by the contract owner due to the `onlyOwner` modifier.

#### 2. `burn(uint256 amt) external`
This function is used to burn (destroy) tokens from the sender's address. It takes one parameter: `amt`, representing the number of tokens to be burned. The `_burn` function from the ERC20 implementation is used to perform the burning operation.

#### 3. `transfer(address recipient, uint256 amt) public override returns (bool)`
This function overrides the `transfer` function from the ERC20 implementation to add custom functionality. It transfers tokens from the sender's address to the specified recipient's address. After transferring tokens, the function returns a boolean indicating the success of the transfer.

## License
The contract specifies the SPDX-License-Identifier as "MIT", indicating that it is released under the MIT license. This license grants users the freedom to use, modify, and distribute the code with limited restrictions. For more details, refer to the MIT License documentation.
