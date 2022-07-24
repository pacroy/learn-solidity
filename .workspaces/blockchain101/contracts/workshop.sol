pragma solidity ^0.8.14;
// SPDX-License-Identifier: MIT

contract Workshop {
    mapping(address=>uint256) private balances;
    mapping(address=>string) private walletName;
    string private name;
    string private symbol;
    uint256 private totalSupply;

    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balances[msg.sender] = _totalSupply;
    }

    function getName() public view returns(string memory) {
        return name;
    }

    function getSymbol() public view returns(string memory) {
        return symbol;
    }

    function getTotalSupply() public view returns(uint256) {
        return totalSupply;
    }

    function balanceOf(address _account) public view returns(uint256) {
        return balances[_account];
    }

    function transfer(address _to, uint256 amount) public {
        address owner = msg.sender;
        uint256 ownerBalance = balances[owner];
        require(ownerBalance >= amount, "Insufficient fund to transfer");
        require(_to != owner, "You cannot send to yourself");
        balances[owner] = ownerBalance - amount;
        balances[_to] += amount;
    }

    function setMyWalletName(string memory _name) public {
        walletName[msg.sender] = _name;
    }

    function getWalletName(address _addr) public view returns(string memory) {
        if (bytes(walletName[_addr]).length != 0)
            return walletName[_addr];
        else
            return "No username";
    }
}