pragma solidity ^0.8.4;
contract Whitelist{
    uint8 public numAddressesWhitelisted;

    uint8 public maxWhitelisteAddresses;

    mapping(address=>bool) public whitelistedAddresses;

    constructor(uint8 _maxwhitelistedAddresses){
        maxWhitelisteAddresses = _maxwhitelistedAddresses;
    }

    function whitelist() public {
        require(!whitelistedAddresses[msg.sender],"You are already whitelisted");
        require(numAddressesWhitelisted <= maxWhitelisteAddresses, "No more accounts can't be add");
        whitelistedAddresses[msg.sender]=true;
        numAddressesWhitelisted++;
    }
}