
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
  /**
   * @title Math
   * @dev ContractDescription
   * @custom:dev-run-script scripts/deploy_with_ethers.ts
   */

contract mapingTest {
    mapping (address => uint) idmaping;
    mapping (uint => string) namemaping;
    uint public sum =0;
    function register(string memory name)public  {
        address account = msg.sender;
        sum++;
        idmaping[account] = sum;
        namemaping[sum] = name;
    }
    function getIdByAddress(address ad)public view returns (uint){
        return idmaping[ad];
    }
    function getNameById(uint id)public view returns(string memory){
        return namemaping[id];
    }
}