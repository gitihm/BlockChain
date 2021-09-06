// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

contract Counter {
    uint256 public counter;

    function getCount() public view returns (uint256) {
        return counter;
    }

    function add() public {
        counter += 1;
    }

    function dec() public {
        counter -= 1;
    }
}
