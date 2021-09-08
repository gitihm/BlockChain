// SPDX-License-Identifier: NoLicense
pragma solidity ^0.8.4;

contract Error {
    uint public num;
    
    function testRequire(uint _i) public  payable {
        // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(_i > 10, "Input must be greater than 10");
        num = _i;
    }

    function testRevert(uint _i) public payable {
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
        num = _i;
    }

    function testAssert(uint _i) public payable {
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num
        assert(num <= 15);
        num = _i;
    }
}