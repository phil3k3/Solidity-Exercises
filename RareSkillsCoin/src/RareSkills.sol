// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract RareCoin {

    mapping(address => uint256) public balanceOf;

    address private skillsCoin;

    constructor(address _skillsCoin) {
        skillsCoin = _skillsCoin;
    }

    function trade(uint256 amount) public {
        (bool ok, bytes memory result) = skillsCoin.call(abi.encodeWithSignature("transferFrom(address, address, uint256)", msg.sender, address(this), amount));
        balanceOf[msg.sender] += amount;
        require(ok, "trade failed");
    }
}


contract SkillsCoin {

    mapping(address => uint256) public balanceOf;

    function mint(address to, uint256 amount) public {
        balanceOf[to] += amount;
    }

    function approve(address rareCoin, uint256 yourBalanceOfSkillsCoin) public {
        (bool ok, bytes memory result) = rareCoin.call(abi.encodeWithSignature("trade(uint256)", yourBalanceOfSkillsCoin));
    }

    function transferFrom(address source, address rareCoin, uint256 yourBalanceOfSkillsCoin) public {
        balanceOf[source] -= yourBalanceOfSkillsCoin;
        balanceOf[rareCoin] += yourBalanceOfSkillsCoin;
    }
}
