// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // solidity version

import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage public simpleStorage;
    function createSimplsStorageContract() public {
        simpleStorage= new SimpleStorage();

    }
}