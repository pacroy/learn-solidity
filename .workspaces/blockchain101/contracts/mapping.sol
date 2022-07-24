pragma solidity ^0.8.14;

contract Mapping {
    mapping(uint=>string) public project;
    uint public count;
    
    function addProject(string memory _name) public {
        project[count] = _name;
        count++;
    }

    mapping(address=>uint) public balances;

    function addBalance(address _addr, uint _i) public {
        balances[_addr] = _i;
    }
}