//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract FakeBanking {
    mapping(address => uint) public balances;

    function updateBalances(uint newSaldo) public {
        balances[msg.sender] = newSaldo;
    }

    function getBalance(address user) public view returns (uint) {
        return balances[user];
    }
 }