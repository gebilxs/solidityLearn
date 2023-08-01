
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
  /**
   * @title Helloworld
   * @dev ContractDescription
   * @custom:dev-run-script scripts/deploy_with_ethers.ts
   */
contract Helloworld{
    string Myname = "xck";

    function getName()  public view returns (string memory){
        return Myname;
    }
    function changeName(string memory _numName) public {
        Myname = _numName;
    }
}
