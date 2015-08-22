//scrAssignPlayer1(player)

player = argument0;

//Assign controls for player to player 2

with (player) {

  upKey = ord('W');
  downKey = ord('S');
  leftKey = ord('A');
  rightKey = ord('D');
  action1Key = ord('X');
  action2Key = ord('C');
  jumpKey = ord('Z');
  
  hAxisPad = gp_axislh;
  vAxisPad = gp_axislv;
  action1Pad = gp_face3;
  action2Pad = gp_face4;
  jumpPad = gp_face1;
  
  padNum = 0;

}
