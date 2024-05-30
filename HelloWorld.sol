// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract helloworld{
    string word;
}


contract Helloworld{
    string public word;
}



contract HelloWorld{
    string word = "Hello World";
}


contract YourName{
    string public Name;
    int public age;

    function addInfo(string memory _name, int _age) public{
        Name = _name;
        age = _age;
    }
}


contract yourName{
    string public name;
    uint256 public age;

    constructor(string memory s, uint256 num){
        name = s;
        age = num;
    }
}











