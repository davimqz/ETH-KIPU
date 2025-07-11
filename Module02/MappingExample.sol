//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MappingExample {
    mapping(address=>string) private names;

    function nameRegister(string memory _name) external {
        names[msg.sender] = _name;
    }

    function getName(address _address) external view returns (string memory) {
        return names[_address];
    }
}