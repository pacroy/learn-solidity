pragma solidity ^0.8.14;

contract Array {
    uint[] arr;

    function getArr() public view returns(uint[] memory) {
        return arr;
    }

    function push(uint _i) public {
        arr.push(_i);
    }

    function pop() public {
        arr.pop();
    }

    function get(uint i) public view returns(uint) {
        return arr[i];
    }
}