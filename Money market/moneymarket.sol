// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MoneyMarket {
    mapping(address => uint256) public balances;
    mapping(address => uint256) public borrowLimits;
    mapping(address => uint256) public borrowedAmount;

    uint256 public totalSupply;

    // Lend assets to the money market
    function lend(uint256 amount) external {
        // Assume some validation and transfer logic here
        // For simplicity, we will not implement these details in this example
        balances[msg.sender] += amount;
        totalSupply += amount;
    }

    // Borrow assets from the money market
    function borrow(uint256 amount) external {
        uint256 borrowLimit = borrowLimits[msg.sender];
        uint256 currentBorrowedAmount = borrowedAmount[msg.sender];
        require(currentBorrowedAmount + amount <= borrowLimit, "Exceeded borrow limit");

        // Assume some validation and transfer logic here
        // For simplicity, we will not implement these details in this example
        borrowedAmount[msg.sender] += amount;
        balances[msg.sender] -= amount;
    }

    // Repay borrowed assets to the money market
    function repay(uint256 amount) external {
        // Assume some validation and transfer logic here
        // For simplicity, we will not implement these details in this example
        borrowedAmount[msg.sender] -= amount;
        balances[msg.sender] += amount;
    }
}
