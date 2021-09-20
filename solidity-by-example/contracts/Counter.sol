// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

contract Counter {
    uint256 public count;

    function increment() external {
        count += 1;
    }

    function decrement() external {
        count -= 1;
    }
}

interface ICounter {
    function count() external view returns (uint256);

    function increment() external;

    function decrement() external;
}

contract MyContract {
    ICounter count;

    constructor(address _counterAddress) {
        count = ICounter(_counterAddress);
    }

    function incrementCounter() external {
        count.increment();
    }

    function decrementCounter() external {
        count.decrement();
    }

    function getCount() external view returns (uint256) {
        return count.count();
    }
}
