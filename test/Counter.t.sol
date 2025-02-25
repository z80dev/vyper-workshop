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

    function setUp() public {
        counter = ICounter(deployCode("Counter", abi.encode(1)));
    }

    function testSetup() public view {
        assertEq(counter.count(), 1);
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.count(), 2);
    }

    function testDecrement() public {
        counter.decrement();
        assertEq(counter.count(), 0);
    }

    function testCannotUnderflow() public {
        counter.decrement();
        assertEq(counter.count(), 0);
        vm.expectRevert();
        counter.decrement();
    }

}
