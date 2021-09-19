// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

/* Graph of inheritance
    A --- G
   / \
  B   C
 / \ /
F  D,E

*/
contract A {
    function test() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B is A {
    function test() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    function test() public pure virtual override returns (string memory) {
        return "C";
    }
}

contract G is A {
    function test() public pure virtual override returns (string memory) {
        return "G";
    }
}

contract D is B, C {
    function test() public pure override(B, C) returns (string memory) {
        return super.test(); //==> C
    }
}

contract E is C, B {
    function test() public pure override(C, B) returns (string memory) {
        return super.test(); //==> B
    }
}

contract F is A, B {
    function test() public pure override(A, B) returns (string memory) {
        return super.test(); //==> B
    }
}
