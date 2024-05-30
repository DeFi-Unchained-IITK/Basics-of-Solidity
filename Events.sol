// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleEvent {
    event ValueSet(uint256 value);

    function setValue(uint256 _value) public {
        emit ValueSet(_value);
    }
}

contract AddressEvent {
    event AddressSet(address indexed addr);

    function setAddress() public {
        emit AddressSet(msg.sender);
    }
}