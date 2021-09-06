// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;


contract Mapping {
    mapping(address => uint256) public points;

    function get(address addr) public view returns (uint256) {
        return points[addr];
    }

    function set(address addr, uint256 point) public {
        points[addr] = point;
    }

    function remove(address addr) public {
        delete points[addr];
    }
}

contract Home {
    mapping(address => mapping(uint256 => string)) public group;

    function get(address addr, uint256 code) public view returns (string memory) {
        return group[addr][code];
    }

    function set(
        address addr,
        uint256 code,
        string memory name
    ) public {
        group[addr][code] = name;
    }

    function remove(address addr, uint256 code) public {
        delete group[addr][code];
    }
}
