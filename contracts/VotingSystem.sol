// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem{
    string public P1 = "Party A";
    string public P2 = "Party B";
    uint private voteA;
    uint private voteB;
     mapping(address => bool) public voted;

    function vote_Party_A() public{
        require(!voted[msg.sender],"Already voted");
        voted[msg.sender] = true;
        voteA +=1;
    }
    function vote_Party_B() public{
        require(!voted[msg.sender],"Already votd");
        voted[msg.sender] = true;
        voteB +=1;
    }
    function DeclareWinner() public view returns(string memory){
        string memory win_party;
        uint win_votes;

        if(voteA>voteB){
            win_party = P1;
            win_votes = voteA;
        }
        else if(voteB>voteA){
            win_party = P2;
            win_votes = voteB;
        }

        return win_party;
    }
}