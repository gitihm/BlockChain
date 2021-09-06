// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

contract Loop {
    //Don't write loops that are unbounded as this can hit the gas limit, causing your transaction to fail.

    //For the reason above, while and do while loops are rarely used.
    function ForLoop() public pure {
        for (uint256 i = 1; i < 10; i++) {
            if (i == 3) {
                continue;
            }

            if (i == 5) {
                break;
            }
        }
    }

    function WhileLoop() public pure {
        uint256 count = 1;

        while (true) {
            if (count == 10) {
                break;
            }
            count += 1;
        }
    }
}
