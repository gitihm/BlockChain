//SPDX-License-Identifier: NoLicense
pragma solidity 0.8.7;

contract Parent {
    uint256 count;
    
    // constructor(uint256 _count){
    //     count = _count;
    // }
    event Log(uint);
    constructor(){
        emit Log(0);
    }

    function foo() public pure returns (uint256) {
        return 1;
    }
    
     function foo(uint256 num) public pure returns (uint256) {
        return num;
    }
    
    function foo(uint256 num , uint256 x) public pure returns (uint256) {
        return num * x;
    }
    
    function test() public virtual returns (uint256){
        emit Log(0);
        return 0;
    }
   
    
    
  
}

contract Parent1{
    event Log1(uint);
    
    constructor(){
        emit Log1(1);
    }
    
     function test() public virtual returns (uint256){
        emit Log1(1);
        return 1;
    }
    
}

contract Child is Parent , Parent1 {    
    // Parent p = new Parent(1);
    
    
    // constructor(uint _count) Parent(_count){
        
    // }
    
    constructor() Parent() Parent1() {
       
    }
    
    function test() public override(Parent,Parent1) returns (uint256){
        // return p.test();
        return super.test();
        // return Parent.test();
    }
}


// contract Test is Child {    
  
//      function test() public pure override returns (uint256){
//         return 2;
//     }
// }
