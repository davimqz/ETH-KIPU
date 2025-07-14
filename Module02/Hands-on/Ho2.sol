//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Ho2 {
    string private message;

    function getMessage() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory _message) public {
        message = _message;
    }
}