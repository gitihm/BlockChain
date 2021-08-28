//SPDX-License-Identifier: NoLicense
pragma solidity 0.8.7;

contract Parent {
    uint256 count;

    function foo() public pure returns (uint256) {
        return 1;
    }

    function funcPrivate() private pure returns (uint256) {
        return 1;
    }

    function funcInternal() internal pure returns (uint256) {
        return 1;
    }

    function goo() external pure returns (uint256) {
        return 1;
    }

    // function getFuncExternal() public {
    //     goo();
    // }
}

contract TextExterrnal {
    function getExternalParents() public {
        goo();
    }
}

contract Child is Parent {    
    uint256 count;

    function getFoo() public pure returns (uint256) {
        return foo();
    }

    function getCount() public view returns (uint256) {
        return count;
    }

    //
    // function getPrivateParent() public pure returns (uint256) {
    //     return funcPrivate();
    // }

    function getPrivateParent() public pure returns (uint256) {
        return funcInternal();
    }

    function getExternalParent() public pure returns (uint256) {
        return goo();
    }
}
