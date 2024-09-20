# BankAccount Smart Contract

The **BankAccount** smart contract allows users to create accounts, deposit Ether, transfer funds to other users, and withdraw funds. It also supports the contract owner withdrawing Ether from the contract.

## Features
- **Create an account**: Register a new account with a name and age.
- **Deposit Ether**: Users can deposit Ether (minimum of 1 Ether) into their accounts.
- **Transfer Ether**: Transfer funds between registered users.
- **Withdraw Ether**: Users can withdraw Ether from their account balance.
- **Admin Ether Withdrawal**: The contract owner can withdraw Ether from the contract.
- **Get user information**: Retrieve details about a registered user (name, age, balance).

## Contract Structure

- **User struct**: Holds data for each user (name, age, balance, and registration status).
- **Mapping**: Maps user addresses to user data.
- **Events**: Logs key actions like account creation, deposits, transfers, and withdrawals.

## Getting Started

### Prerequisites
To interact with this smart contract, you'll need the following tools:
- [Node.js](https://nodejs.org/en/)
- [Hardhat](https://hardhat.org/) or any Solidity development environment
- Ethereum wallet like [MetaMask](https://metamask.io/)
- [Solidity ^0.8.18](https://docs.soliditylang.org/)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Gifftybabe/BankAccount.git
   cd BankAccount
   ```

2. Install dependencies (if using Hardhat):
   ```bash
   npm install
   ```

3. Compile the smart contract:
   ```bash
   npx hardhat compile
   ```

4. Deploy the contract:
   ```bash
   npx hardhat run scripts/deploy.js --network <network-name>
   ```

### Contract Functions

- `createAccount(string _name, uint8 _age)`: Register a new user with their name and age.
- `deposit()`: Deposit Ether into the user’s account (minimum 1 Ether).
- `transfer(address _to, uint256 _amount)`: Transfer Ether from the sender to another user.
- `withdraw(uint256 _amount)`: Withdraw Ether from the user’s account.
- `withdrawEther(uint _amount)`: Allows the owner to withdraw Ether from the contract.
- `getUserCount()`: Get the total number of registered users.
- `getUserInfo(address _user)`: Retrieve a user’s information (name, age, balance, and registration status).
- `getContractBalance()`: View the total Ether balance held by the contract.

### Example Usage

- **Create an Account**:  
  Call `createAccount("Alice", 25)` to register a user named Alice who is 25 years old.

- **Deposit Ether**:  
  Send Ether to the contract using the `deposit()` function.

- **Transfer Ether**:  
  Call `transfer(0xRecipientAddress, 5 ether)` to transfer 5 Ether to another registered user.

- **Withdraw Ether**:  
  Call `withdraw(3 ether)` to withdraw 3 Ether from your account balance.

