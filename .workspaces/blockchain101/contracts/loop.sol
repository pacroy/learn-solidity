pragma solidity ^0.8.14;

contract Loop {
    function sum(uint256 _x) public view returns(uint256) {
        uint256 total;
        for (uint i=1; i<=_x; i++) {
            total += i;
        }
        return total;
    }

    function sum2(uint256 _x) public view returns(uint256) {
        uint256 total;
        uint256 i = 1;
        while (i <= _x) {
            total += i;
            i++;
        }
        return total;
    }
}