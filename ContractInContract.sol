
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract FirstContract {
    
    uint256 public num;

    function store(uint256 a) public {
        num = a;
    }

    function retrieve() public view returns (uint256) {
        return num;
    }

}


// Instead of writing the whole contract in the same file, you can import the required contract from different files.

//import {FirstContract} from "./FirstContract.sol";


contract SecondContract{
    FirstContract public firstContract;

    function CreateSimpleStorage() public {
        firstContract = new FirstContract();
    }

    function setNum(uint _num) public {
        firstContract.store(_num);
    }

    function getNum() public view returns(uint){
        return firstContract.retrieve();
        // return firstContract.num();
    }
}