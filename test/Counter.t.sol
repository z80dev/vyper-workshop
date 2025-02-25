// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7 <0.9.0;

import {Test, console} from "forge-std/Test.sol";

interface ICounter {
    function count() external view returns (uint256);
    function increment() external;
    function decrement() external;
}

contract CounterTest is Test {
    ICounter public counter;

    function setUp() {
        counter = ICounter(deployCore("Counter"), abi.encode(10));
    }

    function testSetup() {
        assertEq(counter.count(), 10);
    }

}
