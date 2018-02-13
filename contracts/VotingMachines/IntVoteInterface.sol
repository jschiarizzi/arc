pragma solidity 0.4.19;

import "../universalSchemes/ExecutableInterface.sol";


contract IntVoteInterface {
    modifier onlyProposalOwner(bytes32 _proposalId) {_;}
    modifier votable(bytes32 _proposalId) {_;}

    /**
     * @dev register a new proposal with the given parameters. Every proposal has a unique ID which is being
     * generated by calculating keccak256 of a incremented counter.
     * @param _numOfChoices number of voting choices
     * @param _proposalParameters defines the parameters of the voting machine used for this proposal
     * @param _avatar an address to be sent as the payload to the _executable contract.
     * @param _executable This contract will be executed when vote is over.
     * @param _proposer address
     * @return proposal's id.
     */
    function propose(
        uint _numOfChoices,
        bytes32 _proposalParameters,
        address _avatar,
        ExecutableInterface _executable,
        address _proposer
        ) public returns(bytes32);

    // Only owned proposals and only the owner:
    function cancelProposal(bytes32 _proposalId) public onlyProposalOwner(_proposalId) votable(_proposalId) returns(bool);

    // Only owned proposals and only the owner:
    function ownerVote(bytes32 _proposalId, uint _vote, address _voter) public onlyProposalOwner(_proposalId) returns(bool);

    function vote(bytes32 _proposalId, uint _vote) public votable(_proposalId) returns(bool);

    function voteWithSpecifiedAmounts(
        bytes32 _proposalId,
        uint _vote,
        uint _rep,
        uint _token) public votable(_proposalId) returns(bool);

    function cancelVote(bytes32 _proposalId) public votable(_proposalId);

    //@dev execute check if the proposal has been decided, and if so, execute the proposal
    //@param _proposalId the id of the proposal
    //@return bool true - the proposal has been executed
    //             false - otherwise.
    function execute(bytes32 _proposalId) public votable(_proposalId) returns(bool);

    function getNumberOfChoices(bytes32 _proposalId) public view returns(uint);

    function isVotable(bytes32 _proposalId) public view returns(bool);

    /**
     * @dev voteStatus returns the reputation voted for a proposal for a specific voting choice.
     * @param _proposalId the ID of the proposal
     * @param _choice the index in the
     * @return voted reputation for the given choice
     */
    function voteStatus(bytes32 _proposalId,uint _choice) public view returns(uint);
}
