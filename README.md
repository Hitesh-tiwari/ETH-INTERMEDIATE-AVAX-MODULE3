# Token Solidity Project

Project to make a new token using Solidity and Hardhat using ERC-20 token Standard

## Features

This project includes the following features:

- Deploying an ERC-20 contract with mintable tokens where only the owner can mint tokens.
- Burn and Transfer of TOkens can be done by any user.

### Steps

- Clone the repo.
- On the command line, type `npm i` to initall necessary files.
- Run a local hardhat network using `npx hardhat node`
- On another terminal, type ` npx hardhat run --network localhost scripts/deploy.js` to deploy the contract on the local chain.
- Use remix for implementation.
