// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract CatRealmRPG {
    
    mapping(address => string) public names;
    mapping(address => uint256) public levels;
    mapping(address => uint256) public gold;
    mapping(address => uint256) public xPos;
    mapping(address => uint256) public yPos;
    mapping(address => bool) public exists;
    
    address[] public players;
    string[] public messages;
    address[] public msgSenders;
    
    event PlayerCreated(address player);
    event PlayerMoved(address player);
    event MessageSent(address sender);
    
    function createPlayer(string memory name) public {
        require(!exists[msg.sender], "Already exists");
        
        names[msg.sender] = name;
        levels[msg.sender] = 1;
        gold[msg.sender] = 100;
        xPos[msg.sender] = 4;
        yPos[msg.sender] = 3;
        exists[msg.sender] = true;
        
        players.push(msg.sender);
        emit PlayerCreated(msg.sender);
    }
    
    function updateGold(uint256 newGold) public {
        require(exists[msg.sender], "No player");
        gold[msg.sender] = newGold;
    }
    
    function updateLevel(uint256 newLevel) public {
        require(exists[msg.sender], "No player");
        levels[msg.sender] = newLevel;
    }
    
    function move(uint256 x, uint256 y) public {
        require(exists[msg.sender], "No player");
        xPos[msg.sender] = x;
        yPos[msg.sender] = y;
        emit PlayerMoved(msg.sender);
    }
    
    function sendMsg(string memory message) public {
        require(exists[msg.sender], "No player");
        messages.push(message);
        msgSenders.push(msg.sender);
        emit MessageSent(msg.sender);
    }
    
    function getPlayers() public view returns (address[] memory) {
        return players;
    }
    
    function getMessages() public view returns (string[] memory, address[] memory) {
        return (messages, msgSenders);
    }
    
    function getPlayerInfo(address addr) public view returns (string memory, uint256, uint256, uint256, uint256) {
        return (names[addr], levels[addr], gold[addr], xPos[addr], yPos[addr]);
    }
}
