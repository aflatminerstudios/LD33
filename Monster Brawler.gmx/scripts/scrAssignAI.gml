//scrAssignAI(player)

//Assign controls for player to AI

player = argument0;

with (player) {
  upKey = vk_up;
  downKey = vk_down;
  leftKey = vk_left;
  rightKey = vk_right;
  action1Key = 190;
  action2Key = 191;
  jumpKey = 188;
  
  hAxisPad = gp_axislh;
  vAxisPad = gp_axislv;
  action1Pad = gp_face3;
  action2Pad = gp_face4;
  jumpPad = gp_face1;
  
  padNum = 1;
  
  getAction = scrGetAIAction;
}