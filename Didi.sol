pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Didi is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Didi(address _owner)  UpgradeableToken(_owner) {
    name = "Didi";
    symbol = "DIT";
    totalSupply = 10000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}