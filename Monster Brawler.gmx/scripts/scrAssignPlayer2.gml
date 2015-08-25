//scrAssignPlayer2(player)

//Assign controls for player to player 2

///scrAssignPlayer2(player)

player = argument0;

with (player) {
  upKey = ord('W');
  downKey = ord('S');
  leftKey = ord('A');
  rightKey = ord('D');
  action1Key = ord('C');
  action2Key = ord('V');
  jumpKey = ord('Z');
  
  hAxisPad = gp_axislh;
  vAxisPad = gp_axislv;
  action1Pad = gp_face3;
  action2Pad = gp_face4;
  jumpPad = gp_face1;
  
  padNum = 1;
  
  getAction = scrGetPlayerAction;
}
