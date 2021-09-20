//SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

contract Payable {
    address payable public owner;
    // mapping(address => uint256) wallets;

    constructor() payable {
        owner = payable(msg.sender);
        // wallets[owner] = 0;
    }

    function deposit() public payable {
        // wallets[owner] = wallets[owner] + _amount;
    }

    function getAmount() public view returns (uint256) {
        // return wallets[owner];
        return address(this).balance;
    }

    function withdraw() public payable {
        // wallets[owner] = wallets[owner] - _amount;
        uint256 amount = address(this).balance;
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }

    function transfer(address _to, uint256 _amount) public payable {
        // wallets[owner] = wallets[owner] - _amount;
        // wallets[_to] = wallets[_to] + _amount;
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
}
