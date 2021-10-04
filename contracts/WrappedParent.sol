//SPDX-License-Identifier: Unlicense
pragma solidity >= 0.4.24 < 0.9.0;

contract WrappedParent {
    modifier someModifier() {
        _someModifier();
        _;
    }

    function _someModifier() internal view {
        require(msg.sender != address(0));
        require(4 != 5);

        for (uint i = 0; i < 50; i++) {
            require(i < 1000);
        }
    }
}
