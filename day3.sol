// SPDX-License-Identifier: NoLicense
pragma solidity ^0.8.4;

contract Day3 {
    string [] text;
    
    constructor(){
        text.push("hello");
    }
    //memory copy value มี address ใหม่ของตัวเอง แล้วชี้ไปที่ addres ใหม่
    //26157 gas
    function setTextMemory() public view returns (string memory) { 
        string memory str1;
        str1 = text[0];
        for(uint i=1;i<10;i++){ //29153
            str1 = "For";
        }
        return str1; //26720
    }
    //storage ไปชี้ไปที่ text arr สามารถชี้ ตัวแปรใน contract
    //23379 gas 
    function setTextStorage() public returns (string memory) { 
        string storage str2;
        str2 = text[0];
        for(uint i=1;i<10;i++){ //43811
            text[0] = "For";
        }
        return text[0]; //26878
    }
    
    function foo() public pure{
        passMemory("123");
        //passStorage(text[0]);
    }
    function passMemory(string memory s1) public pure returns (string memory){
        //s1 is data user and copy data => change
        //copy can change value
        //s1 = "word";
        return s1; //23111
    }
    
    //need change storage use private or internal
    function passStorage(string storage s1) internal pure returns (string memory){
        return s1;
    }
    
    function passCallData(string calldata s1) public pure returns (string memory){
      //data pointer oldValue can't change data
      //s1 is data without contract
      //s1 = "word";
      return s1;  //22895
    }
    
    
}