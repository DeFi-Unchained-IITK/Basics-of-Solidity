// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

interface interfaceExample{

    function getString() external view returns (string memory);

    function setValue(uint num1, uint num2) external;

    function add() external view returns(uint);
}

contract thisContract is interfaceExample{
        //private variables
        uint private _num1;
        uint private _num2;
        function getString() public pure returns(string memory){
            return "This is the example of an interface";
        }
        function setValue(uint num1,uint num2) public{
            _num1 = num1;
            _num2 = num2;
        }
        function add() public view returns(uint){
            return _num1+_num2;
        }

}

contract call{
    interfaceExample obj;
    function callFunction() public{
        obj = new thisContract();
    }
    function getValue() public returns(uint){
        obj.getString();
        obj.setValue (10, 16); 
        return obj.add();
    }
}
