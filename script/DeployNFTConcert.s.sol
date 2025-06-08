// License
// SPDX-License-Identifier: UNLICENSED

// Solidity version compiler
pragma solidity 0.8.24;

// Libraries
import {Script} from "forge-std/Script.sol";
import {NFTConcert} from "../src/NFTConcert.sol";

//Contract
contract DeployNFTConcert is Script{

    function run() external returns(NFTConcert) {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        string memory name_ = "NFT Ticket";
        string memory symbol_ = "Ticket";
        uint256 totalSupply_ = 4;
        string memory baseUri_ = "ipfs://bafybeicnw3rjafkheocpvkji5tzybaklx6ipfkjhbfh6r6bueb4yauihna/";        
        NFTConcert nftTickets = new NFTConcert(name_, symbol_, totalSupply_, baseUri_);
        vm.stopBroadcast();
        return nftTickets;
    }

}