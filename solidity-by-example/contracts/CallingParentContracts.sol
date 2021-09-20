// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

/* Inheritance tree
   A
 /  \
B   C
 \ /
  D
*/

contract A {
    event Log(string message);

    function foo() public virtual {
        emit Log("Called A.foo");
    }

    function bar() public virtual {
        emit Log("Called A.bar");
    }
}

contract B is A {
    function foo() public virtual override {
        emit Log("Called B.foo");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("Called B.bar");
        A.bar();
    }
}

contract C is A {
    function foo() public virtual override {
        emit Log("Called C.foo");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("Called C.bar");
        A.bar();
    }
}

contract D is B, C {
    function foo() public override(B, C) {
        super.foo();
    }

    function bar() public override(B, C) {
        super.bar();
    }
}
