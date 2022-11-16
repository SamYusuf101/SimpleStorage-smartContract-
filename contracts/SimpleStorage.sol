// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; // solidity version

contract SimpleStorage {
    uint256  MyNumber;

    People[] public people;

    struct People{
        uint256 MyNumber;
        string name;
    }

    function store(uint _MyNumber) public {
        MyNumber=_MyNumber;
    }

    function retrieve() public view returns(uint256) {
        return MyNumber;
    }

    function addPeople (string memory _name, uint256 _MyNumber) public {
          People memory newPeople= People({MyNumber:_MyNumber, name:_name});
          people.push(newPeople);
    }
    
}