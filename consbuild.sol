
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
  /**
   * @title Helloworld
   * @dev ContractDescription
   * @custom:dev-run-script scripts/deploy_with_ethers.ts
   */
contract consbuild{
    address public owner;
    constructor(){
        owner = msg.sender;
    }
}