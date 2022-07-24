pragma solidity ^0.8.14;

contract Variable {
    bool private boolean;    // false
    uint256 private unsignedInt256;  // 0
    int private integer; // 0
    address private addressVar;   // 0x00000
    bytes private byteVar; // 0x
    bytes32 private bytes32Var;   //0x00000

    uint x = 10;
    string txt = "Blockchain 101";
    address addr = msg.sender;

    function getX() public view returns(uint) {
        return x;
    }

    function getTxt() public view returns(string memory) {
        return txt;
    }

    function getAddr() public view returns(address) {
        return addr;
    }

    function getAddress() public view returns(address) {
        return msg.sender;
    }
}