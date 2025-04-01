pragma solidity ^0.8.0;

contract WeeklyPrizePool {
    address[] public participants;
    address public lastWinner;
    uint256 public lastDrawTime;
    uint256 public constant WEEK_DURATION = 7 days;

    function enter() public payable {
        require(msg.value > 0, "Must send Ether to enter");
        participants.push(msg.sender);
    }

    function pickWinner() public {
        require(block.timestamp >= lastDrawTime + WEEK_DURATION, "Too early to draw");
        require(participants.length > 0, "No participants");

        uint256 randomIndex = uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, participants.length))) % participants.length;
        lastWinner = participants[randomIndex];
        lastDrawTime = block.timestamp;
        
        payable(lastWinner).transfer(address(this).balance);
        delete participants;
    }
}
