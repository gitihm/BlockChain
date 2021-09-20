# Basic Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```

## Primitive Data Types

Here we introduce you to some primitive data types available in Solidity.

- `boolean`
- `uint`
- `int`
- `address`

## Variables

There are 3 types of variables in Solidity

- **local**
  - declared _`inside`_ a function
  - not stored on the blockchain
- **state**
  - declared _`outside`_ a function
  - stored on the blockchain
- **global** (provides information about the blockchain)

## Ether and Wei

Transactions are paid with **ether**.
Similar to how one dollar is equal to 100 cent, one **ether** is equal to 10^18 **wei.**

## Gas

### How much ether do you need to pay for a transaction?

You pay **gas spent \* gas price** amount of **ether**, where

- **gas is a unit of computation**
- **gas spent is the total amount of gas used in a transaction**
- **gas price is how much ether you are willing to pay per gas**

### Gas Limit

There are 2 upper bounds to the amount of gas you can spend

- **gas limit** (max amount of gas you're willing to use for your transaction, set by you)
- **block gas limit** (max amount of gas allowed in a block, set by the network)

## Data Locations - Storage, Memory and Calldata

Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.

- storage - variable is a state variable (store on blockchain)
- memory - variable is in memory and it exists while a function is being called
- calldata - special data location that contains function arguments, only available for external functions

## View and Pure Functions

Getter functions can be declared view or pure.

**View** function declares that no state will be changed.

**Pure** function declares that no state variable will be changed or read.

##Error
An error will undo all changes made to the state during a transaction.

You can throw an error by calling require, revert or assert.

- **require** is used to validate inputs and conditions before execution.
- **revert** is similar to require. See the code below for details.
- **assert** is used to check for code that should never be false. Failing assertion probably means that there is a bug.

## Visibility

Functions and state variables have to declare whether they are accessible by other contracts.

Functions can be declared as

- **public** - any contract and account can call
- **private** - only inside the contract that defines the function
- **internal**- only inside contract that inherits an internal function
- **external** - only other contracts and accounts can call
State variables can be declared as public, private, or internal but not external.
