contract SimpleDAO {
    mapping (address => uint) public credit;
    function donate(address to) payable public {credit[to] += msg.value;}
    function queryCredit(address to) view public returns (uint){
        return credit[to];
    }
    function getBalance() view public returns (uint){
        return this.balance;
    }
    function withdraw(uint amount) public{
        if (credit[msg.sender]>= amount) {
         msg.sender.call.value(amount)();
        credit[msg.sender]-=amount;
        }
    }
}
