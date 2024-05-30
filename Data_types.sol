// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract DataTypes{
    //Check default values of all data types


    bool public check1;
    bool public check2 = true;

    uint16 public num1 = 3231;
    uint256 public num2 = 432341;
    uint public num3 = 12321;

    int public a = -12321;
    int256 public b = 8722;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    uint[] public arr1;
    uint[] public arr2 = [1,2,3,4,5];
    uint[7] public arr3;


    string public str1;
    string public str2 = "Hello World";

    address public addr1;
    address public addr2 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    uint public constant number = 100;
    address public MyAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

}
