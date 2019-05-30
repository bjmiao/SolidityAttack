pragma solidity ^0.4.23;

contract arrayLength{
    uint256 public x = 2;
    uint256[] public array = [9,8];
    
    constructor () public{
        
    }
    function getLength() public constant returns (uint256){
        return array.length;
    }
    
    function modifyArray(uint _index, uint _value){
        array[_index] = _value;
    }
    
    function popLength(){
        array.length--;
    }
    
}
