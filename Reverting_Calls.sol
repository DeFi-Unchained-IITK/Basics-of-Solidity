// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


contract Require{

    function checkInput(uint _input) public pure returns (string memory) {
        require(_input >= 0, "invalid uint");
        require(_input <=255, "invalid uint");

        return "Input is valid";
    }
}




contract Assert{

    function checkInput(uint _input) public pure returns (string memory) {
        assert(_input < 255);
        return "Valid input";
    }
}




contract Revert{

    function checkInput(uint _input) public pure returns (string memory, uint) {
        if( _input < 0 || _input > 255){
            revert("Invalid input");
        }
        else return ("Valid input", _input);
    }
}




contract Modifier{

    address public owner;
    uint public myNum;

    constructor(){
        owner = msg.sender;
    }

    modifier checkNum(uint _num){
        require(_num > 20, "Number less than 20");
        _;
    }

    function setNum(uint _num) public checkNum(_num){
        myNum = _num;
    }

    modifier checkOwner(){
        require(owner == msg.sender, "Not the owner");
        _;
    }

    function changeOwner(address _newOwner) public checkOwner {
        owner = _newOwner;
    }

}









