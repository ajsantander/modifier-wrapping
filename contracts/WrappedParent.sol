//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

contract WrappedParent {
    modifier someModifier() {
        _someModifier();
        _;
    }

    function _someModifier() internal view {
        require(msg.sender != address(0));
        require(4 != 5);
    }
}
