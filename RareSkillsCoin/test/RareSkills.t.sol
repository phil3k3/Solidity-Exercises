// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/RareSkills.sol";

contract RareSkillsTest is Test {
    RareCoin public _rareCoin;
    SkillsCoin public _skillsCoin;

    function setUp() public {
        _skillsCoin = new SkillsCoin();
        _rareCoin = new RareCoin(address(_skillsCoin));
    }

    function testMint() external {
        vm.deal(address(this), 1 ether);
        (bool success, ) = address(_skillsCoin).mint{value: 1 ether}("");
        require(success, "Send ether failed");
    }
}
