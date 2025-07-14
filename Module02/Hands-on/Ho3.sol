//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Ho2 {
    uint256 private counter;
    address private owner;
    address private operator;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOperator() {
        require(msg.sender == operator, "Only operator can do this");
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can do this");
        _;
    }

    function initialize() public onlyOwner{
        counter = 0;
    }

    function toZero() public onlyOwner{
        counter = 0;
    }

    function getAllCounter() public view onlyOwner returns (uint256) {
        return counter;
    }

    function register() public onlyOperator{
        counter++;
    }


}