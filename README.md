 moneyMArket

Money Market Smart Contract
Description
The "MoneyMarket" smart contract is a basic implementation of a decentralized money market platform. It allows users to lend and borrow assets within the market. Users can lend their assets to the money market, earn interest, and also borrow assets up to a predefined borrow limit. The contract keeps track of users' balances, borrow limits, and borrowed amounts.

Functionality
lend(uint256 amount) external: Allows users to lend assets to the money market. The given amount is added to the user's balance, increasing the total supply of assets in the market.

borrow(uint256 amount) external: Enables users to borrow assets from the money market, provided they don't exceed their borrow limit. The borrowed amount is added to the user's borrowed amount, while the equivalent amount is subtracted from their balance.

repay(uint256 amount) external: Allows users to repay their borrowed assets to the money market. The given amount is deducted from the user's borrowed amount, and the equivalent amount is added to their balance.

Usage
Deploy the contract on the Ethereum network.
Users can interact with the contract using the lend, borrow, and repay functions.
Implement appropriate validation and transfer logic in the contract before using it on the mainnet.
