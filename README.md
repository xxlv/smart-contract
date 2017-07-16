
### 测试链
```
mkdir tmpPrivate && cd tmpPrivate
geth --datadir "./" init genesis.json
geth --datadir "./" --nodiscover console 2>>geth.log
```

### 挖矿
```
miner.start()
```
### 检查货币

```
your_account=eth.accounts[0]
eth.getBalance(your_account)
```


### 成功
```
Contract mined! address: 0x1be11cb23f1731a1ab95ac5609bda54094f9e102 transactionHash: 0x7bf89d146c89c18d26bb3ca8ffd3c1cb0774b36a01fdda0d461a6e9ab6ced7aa
```

此时交易被打包，合约的地址位于：0x1be11cb23f1731a1ab95ac5609bda54094f9e102

调用一个合约非常简单(关于ABI的详细介绍在这里，https://github.com/ethereum/wiki/wiki/Ethereum-Contract-ABI)

```
my_contract=eth.contract(abi).at(address)
my_contract.YOUR_API_FUNC()
```

- 这里我遇到了一个问题是，提示 invalid address ，需要进行设置：
```
web3.eth.defaultAccount=eth.accounts[0]
```
