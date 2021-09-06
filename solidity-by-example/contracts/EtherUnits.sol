// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract EtherUnits {
    uint256 public oneWei = 1 wei;
    //1 wei == 1
    bool public isOneWei = 1 wei == 1;

    uint256 public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = 1 ether == 1e18;

    constructor() {
        console.log("isOneWei:", isOneWei);
        console.log("isOneEther:", isOneEther);
    }
}
