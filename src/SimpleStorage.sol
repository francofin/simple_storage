// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SimpleStorage {
    uint256 favoriteNumber;
    //dynamic array

    struct Person {
        uint256 personFavoriteNumber;
        string name;
    }
    // uint256 personCount = 0;

    mapping(string => Person) public persons;

    //dynamic array
    Person[] public listOfPeople;

    Person public friend = Person({personFavoriteNumber: 3, name: "Matt"});

    function createPerson(
        string memory _name,
        uint256 _personFavoriteNumber
    ) public {
        persons[_name] = Person({
            personFavoriteNumber: _personFavoriteNumber,
            name: _name
        });
        // personCount++;
    }

    function addPerson(
        string memory _name,
        uint256 _personFavoriteNumber
    ) public {
        Person memory newPerson = Person({
            personFavoriteNumber: _personFavoriteNumber,
            name: _name
        });
        listOfPeople.push(newPerson);
    }

    function addPersonVersionTwo(
        string memory _name,
        uint256 _personFavoriteNumber
    ) public {
        listOfPeople.push(
            Person({personFavoriteNumber: _personFavoriteNumber, name: _name})
        );
    }

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}
