// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";

import {ContractA} from "../src/ContractA.sol";
import {ContractB} from "../src/ContractB.sol";

import {Upgrades} from "openzeppelin-foundry-upgrades/Upgrades.sol";

contract UpgradesScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        // Deploy `ContractA` as a transparent proxy using the Upgrades Plugin
        address transparentProxy =
            Upgrades.deployTransparentProxy("ContractA.sol", msg.sender, abi.encodeCall(ContractA.initialize, 10));
    }
}
