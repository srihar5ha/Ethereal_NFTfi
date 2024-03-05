// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Ethereal.sol";

contract EtherealTest is Test {
    Ethereal ethereal;
    IwstETH wstETH;

    function setUp() public {
        // Deploy Ethereal contract and set up the test environment
        ethereal = new Ethereal();
        // Initialize the wstETH interface with the wstETH contract address
        wstETH = IwstETH(0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0); // Replace with actual wstETH address
    }

    function testGetExchangeRate() public {
        // Fetch the exchange rate using the wstETH contract's function
        uint256 rate = wstETH.stEthPerToken();
        // Log the exchange rate for the test output
        emit log_named_uint("Exchange rate (stETH per wstETH):", rate);
    }
}
