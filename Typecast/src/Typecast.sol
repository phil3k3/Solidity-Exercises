// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Typecast {
    /**
     * the goal of this exercise is to pass if msg.value is equal to the address of this contract or revert otherwise
     */

    event Address(address a, address b);

    function typeCast() external payable {
       emit Address(address(uint160(msg.value)), address(this));
       require(address(uint160(msg.value)) == address(this));
    }
}
