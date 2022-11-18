// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 

import "./SimpleStorage.sol";


contract AddStorage is SimpleStorage {

     function store(uint _MyNumber) public override {
        MyNumber=_MyNumber + 5;
    }

}