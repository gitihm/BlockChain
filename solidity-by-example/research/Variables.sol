// SPDX-License-Identifier: NoLicese
pragma solidity ^0.8.4;

contract Variables {
    // Variables have 3 types brp
    // local , state , global

    //State variables are stored on the blockchain.
    string public text = "AIR";
    uint256 public num = 14;

    function foo() public view {
        // Local variables are not saved to the blockchain.
        uint256 i = 456;

        // Here are some global variables
        uint256 timestamp = block.timestamp;

        address sender = msg.sender;
    }
}
