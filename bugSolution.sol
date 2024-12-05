```solidity
function transfer(address _to, uint256 _value) public returns (bool success) {
    require(balances[msg.sender] >= _value, "Insufficient balance");
    uint256 oldBalance = balances[msg.sender];
    balances[msg.sender] -= _value;
    balances[_to] += _value;
    require(balances[msg.sender] == oldBalance - _value, "Transfer failed");
    emit Transfer(msg.sender, _to, _value);
    return true;
}
```