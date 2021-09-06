// SPDX-License-Identifier: NoLicense
pragma solidity ^0.8.4;

contract SimpleStorage {
    uint256 public num;

    function get() public view returns (uint256) {
        return num;
    }

    function set(uint256 _num) public {
        num = _num;
    }
}
