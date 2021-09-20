//SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;
contract Base {
    function privateFunc() private pure returns (string memory) {
        return "private function called";
    }

    function testPrivateFunc() public pure returns (string memory) {
        return privateFunc();
    }

    function internalFunc() internal pure returns (string memory) {
        return "internal function called";
    }

    function testInternalFunc() public pure virtual returns (string memory) {
        return internalFunc();
    }

    function publicFunc() public pure returns (string memory) {
        return "public function called";
    }

    function externalFunc() external pure returns (string memory) {
        return "external function called";
    }

    // function testExternalFunc() public pure returns (string memory) {
    //     return externalFunc();
    // }

    string private privateVar = "my private variable";
    string internal internalVar = "my internal variable";
    string public publicVar = "my public variable";
    // string external externalVar = "my external variable";
}

contract Child is Base {
    // function testPrivateFunc() public pure returns (string memory) {
    //     return privateFunc();
    // }

    function testInternalFunc() public pure override returns (string memory) {
        return internalFunc();
    }
}