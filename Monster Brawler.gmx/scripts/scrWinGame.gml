///scrWinGame(playerNum)

var playerNum = argument0;

switch (player) {
  case 1:
    global.player1Wins++;  
    break;
  
  case 2:
    global.player2Wins++;    
    break;
  
  case 3:
    global.player3Wins++;    
    break;
  
  case 4:
    global.player4Wins++;    
    break;
  
}


global.lastWinner = playerNum;

room_goto(rmRoundComplete);
