// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

//Global variables

contract TxDetails{

    address public owner;
    address public MyBlockHash;
    uint public difficulty;
    uint public gasLimit;
    uint public gasPrice;
    uint public number;
    uint public timestamp;
    address public origin;
    
    constructor(){
        owner = msg.sender;
        MyBlockHash = block.coinbase;
        difficulty = block.difficulty;
        gasLimit = block.gaslimit;
        gasPrice = tx.gasprice;
        number = block.number;
        timestamp = block.timestamp;
        origin = tx.origin;
    }

}