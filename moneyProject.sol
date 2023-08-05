// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
  /**
   * @title project
   * @dev ContractDescription
   * @custom:dev-run-script scripts/deploy_with_ethers.ts
   */
contract project{

    struct funder{
        address funderAddress;
        uint money;
    }

    struct needer{
        address payable neederAddress; 
        uint goal;
        uint amount;
        uint funderCount;
        mapping (uint => funder) fundMap;
    }
    uint needCount;
    mapping (uint => needer)needMap;
    
    function newNeeder (address payable _needAddress,uint _goal)public { 
        needCount++;
        needer storage n = needMap[needCount];
        n.neederAddress = _needAddress;
        n.goal = _goal;
        n.amount = 0;
        n.funderCount = 0;
    }

    function contribute(address _address,uint _needCount)public payable  {
        needer storage _needer = needMap[_needCount];
        _needer.amount += msg.value;
        _needer.funderCount++;
        _needer.fundMap[_needer.funderCount]= funder(_address,msg.value);
    }

    function judgeFinish(uint _needCount)public {
        needer storage _needer = needMap[_needCount];
        if(_needer.amount >= _needer.goal){
            _needer.neederAddress.transfer(_needer.amount);
        }
    }
}
