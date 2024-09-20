# SaveERC_ETH Project

### Overview
SaveERC_ETH is a smart contract project designed for managing ERC20 tokens and Ether deposits, transfers, and withdrawals. It consists of three main contracts: `SaveERC20`, `SaveEther`, and `Web3CXI`. Each contract serves different purposes related to token management, user balances, and fund transfers within the Ethereum blockchain ecosystem.

## Contracts

### 1. SaveERC20
This contract allows users to deposit, withdraw, and transfer ERC20 tokens while keeping track of individual balances within the contract.

#### Features:
- **Deposit ERC20 Tokens:** Users can deposit tokens into the contract.
- **Withdraw Tokens:** Users can withdraw their deposited tokens.
- **Transfer Tokens:** Users can transfer tokens to other users.
- **View Balances:** Users can check their own balance, and the owner can view any user's balance.
  
#### Custom Errors:
- `AddressZeroDetected`, `ZeroValueNotAllowed`, `InsufficientFunds`, `NotOwner`, `CantSendToZeroAddress`, `InsufficientContractBalance`

#### Events:
- `DepositSuccessful`, `WithdrawalSuccessful`, `TransferSuccessful`

---

### 2. SaveEther
This contract allows users to deposit, withdraw, and transfer Ether, managing their balance directly in the contract.

#### Features:
- **Ether Deposit:** Users can deposit Ether.
- **Ether Withdraw:** Users can withdraw Ether from their balance.
- **Transfer Ether:** Users can transfer Ether to another address.
- **View Balances:** Users can view their Ether balance.

#### Events:
- `DepositSuccessful`, `WithdrawalSuccessful`, `TransferSuccessful`

---

### 3. Web3CXI
This contract is an ERC20 token implementation using OpenZeppelin's library. It creates a custom token called `WEB3CXI (WCXI)` with a minting function for the contract owner.

#### Features:
- **Token Creation:** The contract mints 100,000 WCXI tokens to the owner upon deployment.
- **Minting:** Only the owner can mint additional WCXI tokens.

---

## Installation and Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-repo/SaveERC_ETH.git
   cd SaveERC_ETH
   ```

2. **Install dependencies:**
   Make sure to have [OpenZeppelin Contracts](https://openzeppelin.com/contracts/) installed for the ERC20 standard.
   ```bash
   npm install @openzeppelin/contracts
   ```

3. **Compile the contracts:**
   Use [Hardhat](https://hardhat.org/) or any Solidity compiler to compile the smart contracts.
   ```bash
   npx hardhat compile
   ```

4. **Deploy the contract:**
   You can deploy the contracts using Hardhat or Truffle. Example deployment script:
   ```javascript
   const SaveERC20 = artifacts.require("SaveERC20");

   module.exports = function(deployer) {
     deployer.deploy(SaveERC20, "0xYourERC20TokenAddress");
   };
   ```

---

## Usage

### Interacting with the Contracts
1. **SaveERC20**
   - **Deposit Tokens:** Call the `deposit(uint256 _amount)` function to deposit tokens into the contract.
   - **Withdraw Tokens:** Call the `withdraw(uint256 _amount)` function to withdraw tokens.
   - **Transfer Tokens:** Call the `transferFunds(address _to, uint256 _amount)` function to transfer tokens.

2. **SaveEther**
   - **Deposit Ether:** Call the `deposit()` function with a `payable` value.
   - **Withdraw Ether:** Call the `withdraw(uint256 _amount)` function to withdraw Ether.
   - **Transfer Ether:** Call the `transfer(uint256 _amount, address _to)` function to transfer Ether.

3. **Web3CXI Token**
   - **Mint Tokens:** Only the owner can call the `mint(uint _amount)` function to mint additional WCXI tokens.

