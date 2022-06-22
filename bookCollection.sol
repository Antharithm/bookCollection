// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract BookCollection {
    // Mappings (key value storage) - a data structure in Solidity
    mapping(uint8 => string) public names;
    mapping(uint => Book) public books;
    // Nested Mappings = mapping inside of a mapping or returns a mapping
    mapping(address => mapping(uint => Book)) public nestedMappingBooks;

    struct Book {
        string title;
        string Author;
    }

    constructor() {
        names[1] = "NameOne";
        names[2] = "NameTwo";
        names[3] = "NameThree";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(uint _id, string memory _title, string memory _author) public {
        nestedMappingBooks[msg.sender][_id] = Book(_title, _author);
    }
}
