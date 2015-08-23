///scrWinGame(player)

var player = argument0;

switch (player.playerNum) {
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


global.lastWinner = player.playerNum;

room_goto(rmRoundcomplete);
