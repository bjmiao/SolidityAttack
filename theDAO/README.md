在Remix在线IDE下的攻击方式：

1. 部署DAO账户
2. 利用账户A向DAO账户转钱（例如60 ether）（用于被攻击）
3. 部署Mallory账户
4. 利用账户，以Mallory账户的名义向DAO账户Donate一小笔钱（如1ether）
5. 调用DAO的回调函数
