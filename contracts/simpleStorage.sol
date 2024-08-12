// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;     // solidity version. The version can be used in range such as >= 0.8.18 <0.9.0

contract simpleStorage{
    uint256 Number;

        function store(uint256 _Number) public{
        Number = _Number;
    }

    function retrive() public view returns(uint256){
        return Number;
    }

    
    //uint256[] listOfFavouriteNumber;
    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    Person[] public lisstOfPeople;
    
    mapping(string=>uint256) public nameToFavouritNumber;

    function addPerson(string memory _name, uint256 _favouriteNumber) public{
        // Person memory newPerson = Person(_favouriteNumber,_name);
        // lisstOfPeople.push(newPerson);

        lisstOfPeople.push(Person(_favouriteNumber,_name));
        nameToFavouritNumber[_name] = _favouriteNumber;
    }

}

/* 
    Basic Data Types:

    boolean
    uint(unsigned int)
    int
    address
    bytes  
    ---------------------------
    Visiblity Modifiers:

    public : equivalent to a getter function
    private
    external
    internal
    ---------------------------
    returns types
    
    view
    pure
    -----------------------------
    calldata are temporary variables that can not be modified
    memory are temporary variable that can be modified
    storage on the other hand is  permanant veriable that can be modified 
*/