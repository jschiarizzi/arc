pragma solidity ^0.4.19;

import "../controller/Controller.sol";


contract ExecutableInterface {
    function execute(bytes32 _proposalId, address _avatar, int _param) public returns(bool);
}
