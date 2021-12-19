// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./User.sol";

/**
     Building a Platform people can share money with any intermiadiary
 */

contract Abeg{
    // Structure for the the receiver

    struct Needy{
    string  name; // name of the receiver
    string country; //country of the receiver
    string email; // email of the receiver
    int amount; // amount the receiver needed
    int paid; // amount received 
    bool isBalanced; // if receiver have been fully helped
    string story; // why receiver need the  money
    address needAddress; // address to send money too.
    }

    mapping( address => Needy) helpList; //  list of all receiver

    Needy[] needList; // list of needy

    //  check if user already exist with email, if not add to the list
    function askForHelp(string memory name, string memory country, string memory email, string memory story,int amount, address userAdd) public { 
        require(helpList[userAdd] == address(0), "address already exist");
        Needy memory _needy = Needy(name,country,email,amount,0,false,story,userAdd);
        needList.push(_needy);
        helpList[userAdd] = _needy;
    }

    function getListOfHelp() public view returns (Needy[] memory){
        return needList;
    }


    function checkMyStatus(address myAddress) public view returns (Needy memory){
     return helpList[myAddress];
    
    }


    function provideHelp(address receiverAddress) public payable{
        // emit event 
    }

    // create event 


}
