///scrCreateGhost(player)

var player = argument0;

var ghost = instance_create(player.x, player.y, objGhost);

if (player.getAction == scrGetAIAction) {
  /////DO SOMETHING FOR AI
  scrAssignAI(ghost);
} else {
  switch (player.playerNum) {
    case 1:
      scrAssignPlayer1(ghost);
      break;    
    case 2:
      scrAssignPlayer2(ghost);
      break;
  }
}
