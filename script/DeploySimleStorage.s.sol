//SPDX-License-Identifier: MIT


pragma solidity ^0.8.2;

import {Script, console} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script{


    function run() external returns(SimpleStorage) {
        console.log("Starting deployment...");
        // uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        console.log(
            "Deployed SimpleStorage contract at address:",
            address(simpleStorage)
        );
        return simpleStorage;
    }

}