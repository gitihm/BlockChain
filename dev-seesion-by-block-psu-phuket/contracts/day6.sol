// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

//ใน interface ไม่สามารถระกาศตัวแปรได้ แต่ enum struct ได้
interface IShowable {
    // enum Day {MON , TUE}
    // struct S1 { uint i;  uint ii;}
    function show() external returns (uint256);
}

// abstract contract Print {
//     function test() public {}

//     function withOutImplement() public virtual;
// }

interface IPrintable is IShowable {
    function print() external returns (uint256);
}

contract Draw is IPrintable {
    function show() external pure override returns (uint256) {
        return 1;
    }

    function print() external pure override returns (uint256) {
        return 2;
    }

    function foo() public pure returns (uint){
        return 99;
    }
}

contract Test {
    IShowable showable = new Draw();
    //ตัว left เล็กกว่า right

    IPrintable printable;

    constructor(address _drawAddress) {
        printable = IPrintable(_drawAddress);
    }

    function test() public returns (uint256) {
        return showable.show();
    }

    function test2() public returns (uint256) {
        return printable.print();
    }
}
