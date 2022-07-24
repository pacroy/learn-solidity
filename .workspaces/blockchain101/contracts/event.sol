pragma solidity ^0.8.14;

contract Event {
    uint256 public value = 0;

    event Increment(address addrContract, address owner, uint a, uint b);
    event LogString(string s);

    function getValue(uint _a, uint _b) public {
        emit Increment(address(this), msg.sender, _a, _b);
        value = _a + _b;
    }

    function logString(string memory _string) public {
        emit LogString(_string);
    }
}