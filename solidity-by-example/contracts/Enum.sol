// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

import "./EnumStatus.sol";

contract Enum {
    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Canceled;
    }

    function reset() public {
        delete status;
    }
}
