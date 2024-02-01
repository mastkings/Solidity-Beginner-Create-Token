# Solidity-Beginner-Create-Token

# Introduction

MasterToken is an easy-to-use ERC20 token smart contract designed to facilitate token minting and burning functionalities. It has been developed as a project for the Eth-Proof Beginner class.

# Getting Started
Requirements:
1. Public variables to store token details (Token Name, Token Abbreviation, Total Supply).
2. A mapping of addresses to token balances (address => uint).
3. A mint function that takes two parameters: an address and a value. The function increases the total supply by the specified amount and adds the same amount to the balance of the sender's address.
4. A burn function that works in reverse of the mint function, allowing the destruction of tokens. It takes an address and a value as parameters, deducts the value from the total supply, and decreases the balance of the sender's address.
5. The burn function should include conditionals to ensure that the sender's balance is greater than or equal to the amount intended to be burned.

# Executing the Program
To run this program, you can utilize Remix, an online Solidity IDE. Follow these steps:

1. Visit the Remix website at Remix IDE.
2. Create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., masterToken.sol).
3. Copy and paste the provided code into the file.

# Usage
To utilize the MasterToken contract, deploy it to a network of your choice and interact with its functions using a web3 provider like MetaMask or a similar tool.

# Constructor
The MasterToken contract comes with a constructor that takes three parameters:

1. name (string): The name of the token.
2. symbol (string): The symbol of the token.
3. totalSupply (uint256): The total supply of the token.

The constructor initializes the name, symbol, and totalSupply variables, and sets the balance of the contract creator to the total supply.

# Mint Function
The mint function enables anyone to increase the total supply and the balance of a specified address. It requires two parameters:

1. _to (address): The address to mint the tokens to.
2. _value (uint256): The amount of tokens to mint.

# Burn Function
The burn function allows the contract creator to decrease the total supply and their own address's balance, provided they have sufficient balance. It takes one parameter:

1. _value (uint256): The amount of tokens to burn.

The function verifies that the contract creator has enough balance before proceeding with the token burning process.

# Author
[[Kings](https://github.com/mastkings)] 

# License
This project is licensed under the [MIT] License.
