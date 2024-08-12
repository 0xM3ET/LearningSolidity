//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./simpleStorage.sol"; 

contract AddFiveStorage is SimpleStorage {
    function store(uint256 _Number) public override {
        Number = _Number + 5;
    }
}