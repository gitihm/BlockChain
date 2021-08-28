//SPDX-License-Identifier: NoLicense
pragma solidity 0.8.0;

import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/master/contracts/token/ERC20/ERC20.sol";

contract MyBlock is ERC20 {
    constructor(string memory _name , string memory _symbol) ERC20(_name , _symbol){
        _mint(msg.sender, 1000000 * 10 ** uint(decimals()));
    }
}