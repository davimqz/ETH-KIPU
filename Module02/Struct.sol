//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract  Struct{
    struct Register {
        address adr;
        string name;
    }

    Register[] private users;

    constructor() {
        users.push(Register({adr: msg.sender, name: "Owner"}));
    }

    function userRegistration(string memory _name) public {
        Register memory reg = Register(msg.sender, _name);
        users.push(reg);
    }

    function listUsers() public view returns (Register[] memory) {
        return users;
    }

    function removeUser(uint256 _id) public {
        delete users[_id];
    }


}