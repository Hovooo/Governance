//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Storage is Ownable {

    uint myVal;

    event Stored(uint newVal);

    function store(uint _newVal) external onlyOwner {
        myVal = _newVal;
        emit Stored(myVal);
    }

    function read() external view returns(uint) {
        return myVal;
    }
}