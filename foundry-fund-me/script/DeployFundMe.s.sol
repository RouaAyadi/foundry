//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.19;

import {Script} from "../lib/forge-std/src/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMe is Script {
    function run() external returns (FundMe) {
        vm.startBroadcast();
        FundMe fundMe = new FundMe();
        vm.stopBroadcast();
        return fundMe;
    }
}