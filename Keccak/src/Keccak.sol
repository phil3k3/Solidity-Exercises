// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Keccak {
    /**
     * In this exercise, the task is to return the correct keccak256 of any value passed into the keccak function
     */
    event Value(uint256 amount);

    function keccak(uint256 x) external returns (bytes32) {
       emit Value(x);
       return keccak256(abi.encodePacked(x));
    }
}
