
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
  /**
   * @title Math
   * @dev ContractDescription
   * @custom:dev-run-script scripts/deploy_with_ethers.ts
   */

contract global {
        function Global ()public view returns  (address){
            return msg.sender;
        }
        // 在这个升级中没有办法直接获得挖矿难度
        function Global2 ()public view returns  (bytes32){
            return blockhash(block.number - 1);
        }  
        function Global3() public  view returns(uint){
            return block.number;
        }
}