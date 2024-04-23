// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract BasicMath {
    uint256 constant MAX_INT = type(uint).max;

    function adder(uint _a, uint _b) external pure returns (uint, bool) {
        if (_a == MAX_INT || _b == MAX_INT) {
            // Adding 1 to MAX_INT would cause overflow
            return (0, true);
        }

        uint sum = _a + _b;
        if (sum < _a || sum < _b) {
            // Overflow occurred
            return (0, true);
        }
        return (sum, false);
    }
    
    function subtractor(uint _a, uint _b) external pure returns (uint, bool) {
        if (_b > _a) {
            // Underflow would occur
            return (0, true);
        }
        return (_a - _b, false);
    } 

    function getMaxInt() external pure returns (uint){
        return MAX_INT;
    }
}
