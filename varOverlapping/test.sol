pragma solidity 0.4.24;

contract test {
    struct aa{
        uint x;
        uint y;
    }
    uint public a = 4;
    uint public b = 6;
    function test1() returns (uint){
        aa x;
        x.x = 9;
        x.y = 7;
    }
}
