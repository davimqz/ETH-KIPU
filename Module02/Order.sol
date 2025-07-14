//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Bank {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {

    }

    receive() external payable {

    }

    function contractGetBalance () public view returns (uint256) {
        return address(this).balance;
    }

    function transferTo(address payable to, uint256 amount) public {
        require(msg.sender == owner, "Only owner can transfer");
        require(amount <= address(this).balance, "Not enough balance");
        to.transfer(amount);
    }
}