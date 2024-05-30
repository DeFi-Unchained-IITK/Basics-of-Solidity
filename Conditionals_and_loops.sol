// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract IfElse{
    
    string public s;

    function set(int _num) public {
        if(_num < 10){
            s = "less than 10";
        }
        else{
            s = "more than or equal to 10";
        }
    }
    
}



contract Terniary{
    
    string public s;

    function set(int _num) public {
        s = _num<10 ? "less than 10" : "equal to or more than 10";
    }
    
}


contract loops{

    int[] public data;
    function insert_data() public{
        for(int i=0; i<15; i++){
            data.push(i);
        }
    }



    int[] public arr;
    int public k = 5;

    function insert_arr() public{
        while(k>0){
            arr.push(k);
            k--;
        }
    }



    int[] public nums;
    int public j = 10;

    function insert_nums() public{
        do{
            nums.push(j);
            j--;
        }while(j>0);
    }

}


contract Mappings{
    mapping(address => uint) public myMap;

    function getNum(address _addr) public view returns(uint){
        return myMap[_addr];
    } 

    function entry(address _addr, uint _num) public{
        myMap[_addr] = _num;
    }

    function remove(address _addr) public{
        delete myMap[_addr];
    }

    mapping(address => mapping(uint => bool)) public nestedMap;

    function getNum1(address _addr, uint _i) public view returns(bool){
        return nestedMap[_addr][_i];
    }

    function set(address _addr, uint _i, bool _check) public{
        nestedMap[_addr][_i] = _check;
    }

    function remove1(address _addr, uint _i) public{
        delete nestedMap[_addr][_i];
    }


}













