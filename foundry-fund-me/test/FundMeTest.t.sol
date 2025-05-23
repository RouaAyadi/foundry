//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.18;

import {Test,console} from "../lib/forge-std/src/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test {
    FundMe fundMe;
    function setUp() external {
        fundMe = new FundMe();
    }
    function testDemo() public {
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }
    function testOwnerIsMsgSender() public {
        assertEq(fundMe.i_owner(), address(this));
    }
}