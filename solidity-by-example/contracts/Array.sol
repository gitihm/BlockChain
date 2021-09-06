// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

contract Array {
    uint256[] public arr;

    // uint256[] public cart2 = [1, 2, 3];

    // uint256[5] public cart3;

    function get() public view returns (uint256[] memory) {
        return arr;
    }

    function add(uint256 num) public {
        arr.push(num);
    }

    function pop() public {
        arr.pop();
    }

    function count() public view returns (uint256) {
        return arr.length;
    }

    function remove(uint256 idx) public {
        delete arr[idx];
    }

    function removeNoneGap(uint256 index) public {
        // Move the last element into the place to delete
        arr[index] = arr[arr.length - 1];
        // Remove the last element
        arr.pop();
    }
}
