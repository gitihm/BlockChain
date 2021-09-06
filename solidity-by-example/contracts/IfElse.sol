// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

contract IfElse {
    function foo(uint256 x) public pure returns (string memory) {
        if (x < 10) {
            return "more";
        } else if (x > 10) {
            return "less";
        } else {
            return "equal";
        }
    }
}
