// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract prince_Token {

    // public variables here
    string public tokenName = 'Ether';
    string public tokenAbbrv = 'ETH';
    uint public total_supply = 0;

    // mapping variable here
    mapping(address => uint) public balances;
  
    // mint function
    function mint_Func (address _address, uint _value) public {
        total_supply += _value;
        balances[_address] += _value;
    }

    // burn function
    function burn_Func (address _address, uint _value) public {
        if(balances[_address] >= _value) {
            total_supply -= _value;
            balances[_address] -= _value;
    }
        }
       
}
