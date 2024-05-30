// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


contract StorageExample {
    // State variable stored in blockchain storage
    struct User {
        string name;
        uint age;
    }

    User[] public users;

    // Function to add a new user
    function addUser(string memory _name, uint _age) public {
        users.push(User(_name, _age));
    }

    // Function to update a user's details
    function updateUser(uint _index, string memory _newName, uint _newAge) public{
        // Using storage keyword to create a reference to the user at index _index
        User storage user = users[_index];
        user.name = _newName;
        user.age = _newAge;
    }

    // Function to demonstrate the default behavior of state variables being stored in storage
    function getUser(uint _index) public view returns (string memory, uint) {
        // Accessing the user directly
        User memory user = users[_index];
        return (user.name, user.age);
    }
}