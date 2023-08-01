
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
  /**
   * @title Math
   * @dev ContractDescription
   * @custom:dev-run-script scripts/deploy_with_ethers.ts
   */

contract payableTest {
    function pay()public payable {}
    function getBalance () public view returns (uint){
        return address(this).balance;
    }
    function getThis() public view returns(address){
        return address(this);
    }
    function getRBalance(address account) public view returns (uint){
        return account.balance;
    }
    function transfer()public payable  {
        address payable account = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        account.transfer(address(this).balance);
    }
      function transfer2(address payable recipient, uint amount) public {
        require(amount <= address(this).balance, "Insufficient balance");
        recipient.transfer(amount);
    }
}