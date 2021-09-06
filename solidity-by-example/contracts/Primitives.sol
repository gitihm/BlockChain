// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

contract Primitives {
    // this is some priimitive data types isboolean uint int address

    //easy use
    bool public boo = true;

    //uint ->> non negative integers
    uint8 public u8 = 1;
    uint256 public u256 = 456;
    uint256 public u = 123; // <---- this is uint256 bro

    //if u want use negative integers , using int bro
    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i = -123; // <-----this is int256 bro

    address public addr = 0xbeC206D814f493D875E96930BFB34e620FA0aFfa; // this is address wallet me (ETH)

    // Default values
    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
