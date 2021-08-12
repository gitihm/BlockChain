// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

contract Day4 {
    enum Status { PAID, UNPAID }
    
    struct Gutitar {
        uint price;
        string model;
        Status status;
        address owner;
        
    }
    
    address payable owner;
    
    mapping (uint => Gutitar) private gutitars;
    
    event BuyGutitar(uint, string , bool);
    
    modifier checkCost (uint id) {
        require (msg.value >= gutitars[id].price ,"Not enough ethers");
        _;
    }
    
    constructor(){
        owner = payable(msg.sender);
    }
    
    function setGutitar(uint id , uint price , string memory model) public {
        gutitars[id] = Gutitar(price * 10 ** 18, model , Status.UNPAID , owner);
    }
    
    function getGutitar(uint id) public view returns (Gutitar memory){
        return gutitars[id];
    }
    
    function buyGutitar(uint id) public payable checkCost(id) returns (Gutitar memory){
        
        
        gutitars[id].status = Status.PAID;
        gutitars[id].owner = msg.sender;
        
        // owner.transfer(msg.value);
        // bool res = owner.send(msg.value);
        (bool result,) = owner.call{ value : msg.value }("");
        //address(this).call{ value : msg.value }("");
        
        emit BuyGutitar(id,gutitars[id].model,result);
        
        return gutitars[id];
    }
    
}