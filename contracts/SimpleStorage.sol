// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; // solidity version

contract SimpleStorage {
    uint256  MyNumber;
    mapping(string=>uint256) public nameToNumber;
    mapping(uint256=>string) public NumberToName;


    People[] public people;

    struct People{
        uint256 MyNumber;
        string name;
    }

    function store(uint _MyNumber) public virtual{
        MyNumber=_MyNumber;
    }

    function retrieve() public view returns(uint256) {
        return MyNumber;
    }

    function addPeople (string memory _name, uint256 _MyNumber) public {
         
          people.push(People(_MyNumber, _name));
          nameToNumber[_name] =_MyNumber;
          NumberToName[_MyNumber] =_name;

          
    }
    
}