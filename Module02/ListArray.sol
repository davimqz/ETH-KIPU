//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ListArray {
    uint[] public numbers;

    function addNumberArray()public {
        for (uint i = 0; i <= 5; i++) {
            numbers.push(i);
        }
    }

    function listArray() public view returns (uint[] memory) {
        return numbers;
    }
}