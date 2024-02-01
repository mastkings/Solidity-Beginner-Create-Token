// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MasterToken {
    // Public variables for the token details
    string public tokenName;
    string public tokenSymbol;
    uint256 public totalSupply;

    // Mapping from addresses to their balances
    mapping(address => uint256) public balances;

    // Constructor to set the initial values for the token details
    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        tokenName = _name;
        tokenSymbol = _symbol;
        totalSupply = _initialSupply;
        // Initially assign all tokens to the contract's deployer
        balances[msg.sender] = _initialSupply;
    }

    // Mint function to create tokens and add to an address's balance
    function mint(address _to, uint256 _value) public {
        totalSupply += _value; // Increase the total supply by _value
        balances[_to] += _value; // Add the value to the balance of the address _to
        emit Transfer(address(0), _to, _value); // Emit a transfer event from the 0 address (minting)
    }

    // Burn function to destroy tokens from an address's balance
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn."); // Ensure the sender has enough balance
        balances[_from] -= _value; // Subtract the value from the sender's balance
        totalSupply -= _value; // Decrease the total supply by _value
        emit Transfer(_from, address(0), _value); // Emit a transfer event to the 0 address (burning)
    }

    // Event declaration for transfers, useful for tracking transactions
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
}

