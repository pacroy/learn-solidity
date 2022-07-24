pragma solidity ^0.8.14;

contract Condition {
    uint256 public number = 100;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        // This annotation modifier will add this line of code to ever function implementing this annotation
        require(msg.sender == owner, "You are not the contract owner");
        _;
    }

    function example(uint256 _x) public view onlyOwner returns(bool) {
        return (_x < 10);
    }

    function addNumber(uint256 _x) public onlyOwner {
        if (_x < 10)
            number += _x;
        else
            revert();
    }

    function addNumber2(uint256 _x) public onlyOwner {
        // require makes it simpler and more secure than if..revert()
        require(_x < 10, "x must be less than 10");
        number += _x;
    }
}