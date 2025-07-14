//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract UserRegistration {
    mapping(address => string) public names;
    address[] private addresses;

    constructor() {
        names[msg.sender] = "Administrator";
        addresses.push(msg.sender);
    }

    function addAddress(string memory name) external {
        names[msg.sender] = name;
        addresses.push(msg.sender);
    }

    function registerUser(address _address, string memory name) external {
        names[_address] = name;
        addresses.push(_address);
    }

    function getName(address user) external view returns (string memory) {
        return names[user];
    }

    function listAccounts() public view returns (address[] memory, string[] memory) {
        string[] memory listNames = new string[] (addresses.length);
        for (uint256 i = 0; i < addresses.length; i++) {
            listNames[i] = names[addresses[i]];
        }
        return (addresses, listNames);
    }
}