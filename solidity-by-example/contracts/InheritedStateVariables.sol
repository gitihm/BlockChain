// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

contract UserA {
    string public name = "Ismael Hama";

    function getName() public view returns (string memory) {
        return name;
    }
}


contract UserB is UserA {
    constructor(){
        name = "Hello Peter!!";
    }
}