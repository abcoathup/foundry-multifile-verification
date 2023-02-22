// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/MyToken.sol";


// source .env
// forge script script/MyToken.s.sol:MyTokenScript --rpc-url $GOERLI_RPC_URL --etherscan-api-key $ETHERSCAN_KEY --broadcast --verify -vvvv
contract MyTokenScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

        MyToken token = new MyToken();

        vm.stopBroadcast();
    }
}
