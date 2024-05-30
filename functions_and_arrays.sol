// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

//function _func_name(parameters) public scope returns(return type){
//  }


contract LearnFunction{
    uint num = 10;

    function getNum() public view returns(uint){
        return num;
    }

    function setNum(uint _num) public{
        num = _num;
    } 

}





contract learnFunction{

    uint public first = 1;
    uint public second = 2;

    function getText() public pure returns(string memory){
        return "Hi threre!";
    }

    function getMsg(string memory _text) public pure returns(string memory){
        return string.concat("The message is :", _text);
    }

    function addNums(uint a, uint b) public pure returns(uint){
        return a+b;
    }

    function calculation(uint num1, uint num2) public pure returns(uint, uint, uint, uint, string memory){
        uint add = num1+num2;
        uint sub = num1-num2;
        uint mul = num1*num2;
        uint div = num1/num2;

        string memory text = "The above are returned values.";

        return (add, sub, mul, div, text);
    }

    function result() public view returns(uint total, uint product){
        total = first + second;
        product = first*second;
    }

}






contract Array{

    uint[] public arr;

    function getArr() public view returns (uint[] memory){
        return arr;
    }

    function push(uint _num) public{
        arr.push(_num);
    }

    function pop() public{
        arr.pop();
    }

    function getLen() public view returns (uint){
        return arr.length;
    }

    function remove(uint index) public {
        delete arr[index];
    }

}





