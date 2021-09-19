// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

contract HiNum {
    uint256 public num;

    constructor(uint256 _num) {
        num = _num;
    }
}

contract HiAir {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Hi is HiNum(1), HiAir("Hi AIR") {}

contract Hi2 is HiNum, HiAir {
    constructor() HiNum(1) HiAir("Hi AIR") {}
}

contract Hi3 is HiNum, HiAir {
    constructor() HiAir("Hi AIR") HiNum(1) {}
}
