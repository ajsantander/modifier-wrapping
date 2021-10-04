//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

contract NormalParent {
    modifier someModifier() {
        require(msg.sender != address(0));
        require(4 != 5);
        _;
    }
}
