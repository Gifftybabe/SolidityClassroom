# CrowdFunding Smart Contract

This Solidity smart contract allows users to create and manage crowdfunding campaigns, receive donations, and handle fund distribution securely on the Ethereum blockchain. Campaign creators can specify a goal, benefactor, and deadline for the campaign, while users can donate funds to active campaigns.

## Features
- Create crowdfunding campaigns with a goal and deadline.
- Accept donations from users and track individual contributions.
- Transfer funds to the benefactor when the campaign ends successfully.
- Allow users to claim refunds if the campaign fails to meet its goal.
- Only the contract owner can withdraw Ether from the contract.

## Getting Started

### Prerequisites
To interact with this smart contract, you'll need the following tools:
- [Node.js](https://nodejs.org/en/)
- [Hardhat](https://hardhat.org/) (or any Solidity development environment)
- Ethereum wallet like [MetaMask](https://metamask.io/)
- [Solidity ^0.8.24](https://docs.soliditylang.org/)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Gifftybabe/CrowdFunding.git
   cd CrowdFunding
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

### Contract Overview

The contract consists of the following key components:

- **Campaign Creation:** Users can create a campaign by providing a title, description, benefactor address, goal, and duration.
- **Donations:** Users can donate to active campaigns. Each donation is recorded and tracked per user.
- **Campaign End:** Once a campaign's deadline is reached, the funds are transferred to the benefactor if the goal is met.
- **Refunds:** If a campaign fails to meet its goal, contributors can claim refunds.
- **Owner Withdrawal:** The contract owner can withdraw Ether from the contract's balance.

### Contract Functions

- `createCampaign`: Creates a new campaign.
- `donateToCampaign`: Allows users to donate to an active campaign.
- `endCampaign`: Ends a campaign and transfers funds to the benefactor.
- `claimRefund`: Allows users to claim a refund if the campaign fails.
- `withdrawEther`: Allows the contract owner to withdraw Ether from the contract.
- `getContractBalance`: Returns the balance of the contract.

### Error Handling

The contract includes several custom errors for better debugging and gas efficiency:
- `NotOwner()`: Thrown when non-owners attempt restricted actions.
- `CallFailed()`: Thrown when a low-level call fails.
- `CampaignEnd()`: Thrown when attempting to interact with an ended campaign.
- `CampaignNotFound()`: Thrown when interacting with a non-existent campaign.
- `InvalidDonationAmount()`: Thrown for invalid donation amounts.
- `RefundNotAllowed()`: Thrown when attempting to refund ineligible campaigns.

### Events

- `CampaignCreated`: Triggered when a new campaign is created.
- `DonationReceived`: Triggered when a donation is made.
- `CampaignEnded`: Triggered when a campaign ends and funds are transferred.
- `EtherWithdrawn`: Triggered when the owner withdraws Ether from the contract.
- `RefundIssued`: Triggered when a refund is issued to a donor.
