// SPDX-License-Identifier: NoLicense

pragma solidity ^0.8.4;

import "./Todo.sol";

contract Todos {
    Todo[] public todos;

    function create(string memory _text) public {
        todos.push(Todo({text: _text, completed: false}));
        // todos.push(Todo(_text, false));
        // Todo memory todo;
        // todo.text = _text;

        // todos.push(todo);
    }

    function get(uint256 idx)
        public
        view
        returns (string memory text, bool completed)
    {
        Todo storage todo = todos[idx];
        return (todo.text, todo.completed);
    }

    function update(uint256 idx, string memory _text) public {
        Todo storage todo = todos[idx];
        todo.text = _text;
    }

    function toggleStatus(uint256 idx) public {
        Todo storage todo = todos[idx];
        todo.completed = !todo.completed;
    }
}
