// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract IsSorted {
    /**
     * The goal of this exercise is to return true if the members of "arr" is sorted (in ascending order) or false if its not.
     */
    function isSorted(uint256[] calldata arr) public view returns (bool) {
        for (uint j = 0; j < arr.length-1; j++) {
		if (arr[j] > arr[j+1]) {
			return false;
		}
	}
	return true;
    }
}
