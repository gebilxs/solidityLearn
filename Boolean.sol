
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
  /**
   * @title Boolean
   * @dev ContractDescription
   * @custom:dev-run-script scripts/deploy_with_ethers.ts
   */

contract BooleanTest{
    bool _a;
    int num1 = 100;
    int num2 = 200;
    function getBool() public view returns(bool){
        return _a;
        // 默认为false
    }
    function getBool2() public view returns(bool){
        return !_a;
        // 为true
    }
    function judge() public view returns(bool){
        return num1 == num2;
    }
    function judge2() public view returns(bool){
        return num1 != num2;
    }
    // && and || is same to cpp
}