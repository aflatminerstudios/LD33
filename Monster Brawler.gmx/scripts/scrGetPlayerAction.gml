///scrGetPlayerAction()

var left = script_execute(getLeft, leftKey, hAxisPad, padNum);
var right = script_execute(getRight, rightKey, hAxisPad, padNum);

var dir = left + right;

if (dir != 0) {
  ds_map_add(actionList, "MoveHorizontal", dir);  
}

var jump = script_execute(getJump, jumpKey, jumpPad, padNum);

if (jump == 0) {
  jump = script_execute(getUp, upKey, vAxisPad, padNum);
}

if (jump != 0) {
  ds_map_add(actionList, "Jump", jump);
}

if (isJumping && !beenReleased) {

  var jumpR = script_execute(getJumpReleased, jumpKey, jumpPad, padNum);
  
  if (jumpR == 0) {
    jumpR = script_execute(getUpReleased, upKey, vAxisPad, padNum);
  }
  
  if (jumpR != 0) {
    ds_map_add(actionList, "JumpReleased", jump);
  }
}

var act1 = script_execute(getAction1, action1Key, action1Pad, padNum);

if (act1 != 0) {
  ds_map_add(actionList, "DoAction1", action1);
}

var act2 = script_execute(getAction2, action2Key, action2Pad, padNum);

if (act2 != 0) {
  ds_map_add(actionList, "DoAction2", action2);
}
