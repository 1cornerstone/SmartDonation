// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract User{

    string  internal email;

    constructor (string memory _email){
        email = _email;
    }

}


