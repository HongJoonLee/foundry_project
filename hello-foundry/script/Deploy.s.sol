// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "../src/MyToken.sol";

contract Deploy is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Deploy with 1 million tokens (with 18 decimals)
        new AndrewCoin(1_000_000 * 10 ** 18);

        vm.stopBroadcast();
    }
}
