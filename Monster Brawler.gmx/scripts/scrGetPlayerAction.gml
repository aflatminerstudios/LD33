///scrGetPlayerAction()

var left = script_execute(getLeft, leftKey, leftPad, padNum);

var right = script_execute(getRight, rightKey, rightPad, padNum);

var dir = left + right;

if (dir != 0) {
  ds_map_add(actionList, "MoveHorizontal", dir);  
}

var jump = script_execute(getJump, jumpKey, jumpPad, padNum);

if (jump != 0) {
  ds_map_add(actionList, "Jump", jump);
}
