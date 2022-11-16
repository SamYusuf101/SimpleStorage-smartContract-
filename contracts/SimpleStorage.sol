// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; // solidity version

contract SimpleStorage {
    uint256 public MyNumber;

    function store(uint _MyNumber) public {
        MyNumber=_MyNumber;
    }

    function retrieve() public view returns(uint256) {
        return MyNumber;
    }
    
}