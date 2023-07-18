// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract IsPrime {
    /**
     * The goal of this exercise is to return if "number" is prime or not (true or false)
     */
    function isPrime(uint256 number) public view returns (bool) {
       for(uint256 j = 2; j < number; j++) {
         if (number % j == 0) {
            return false;
         }
       }
       return true;
    }
}
