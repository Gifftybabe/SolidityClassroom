# AreaOfShapes Smart Contract

This Solidity smart contract allows users to calculate the areas of basic geometric shapes: squares, rectangles, and triangles. The contract provides three simple functions that return the calculated area based on the dimensions provided by the user.

## Features
- Calculate the area of a **square**.
- Calculate the area of a **rectangle**.
- Calculate the area of a **triangle**.

## Getting Started

### Prerequisites
To interact with this smart contract, you'll need the following tools:
- [Node.js](https://nodejs.org/en/)
- [Hardhat](https://hardhat.org/) or any Solidity development environment
- Ethereum wallet like [MetaMask](https://metamask.io/)
- [Solidity ^0.8.0](https://docs.soliditylang.org/)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Gifftybabe/AreaOfShapes.git
   cd AreaOfShapes
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

- `areaOfSquare(uint _length)`: Calculates and returns the area of a square given the length of one side.
- `areaOfRectangle(uint _length, uint _breath)`: Calculates and returns the area of a rectangle given its length and breadth.
- `areaOfTriangle(uint _base, uint _height)`: Calculates and returns the area of a triangle given its base and height.

### Example Usage

- **Area of a Square**:  
  Call `areaOfSquare(5)` to calculate the area of a square with side length 5.  
  Expected result: `25`.

- **Area of a Rectangle**:  
  Call `areaOfRectangle(5, 10)` to calculate the area of a rectangle with length 5 and breadth 10.  
  Expected result: `50`.

- **Area of a Triangle**:  
  Call `areaOfTriangle(10, 6)` to calculate the area of a triangle with base 10 and height 6.  
  Expected result: `30`.
