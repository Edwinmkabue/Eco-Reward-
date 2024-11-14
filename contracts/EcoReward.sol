// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract EcoReward {
    // Owner of the contract
    address public owner;

    // Mapping to store user balances
    mapping(address => uint256) public balances;

    // Event to log rewards
    event RewardGiven(address indexed user, uint256 amount);

    // Constructor to set the owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict access
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can execute this");
        _;
    }

    // Function to reward tokens
    function rewardUser(address user, uint256 amount) public onlyOwner {
        balances[user] += amount;
        emit RewardGiven(user, amount);
    }

    // Function to get user balance
    function getBalance(address user) public view returns (uint256) {
        return balances[user];
    }
}
