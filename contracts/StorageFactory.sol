//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

//import "./simpleStorage.sol";
//the above is good , but we shoud not default to it.
// insted we should use a named import 

import {SimpleStorage} from "./simpleStorage.sol";

contract StorageFactory{

    // type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;
    //address[] public listOfSimpleStorageAddresses;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex ,uint256 _newSimplestorageNumber) public {
        // Address
        // ABI - Application Binary Interface
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimplestorageNumber);
    }

    function sfget(uint256 _simpleStorageIndex) public view returns(uint256){
        return  listOfSimpleStorageContracts[_simpleStorageIndex].retrive();
    }

} 