///scrGetPlayerAction()

var left = script_execute(getLeft, leftKey, axisPad, padNum);

var right = script_execute(getRight, rightKey, axisPad, padNum);

var dir = left + right;

if (dir != 0) {
  ds_map_add(actionList, "MoveHorizontal", dir);  
}

var jump = script_execute(getJump, jumpKey, jumpPad, padNum);

if (jump != 0) {
  ds_map_add(actionList, "Jump", jump);
}

var action1 = script_execute(getAction1, action1Key, action1Pad, padNum);

if (action1 != 0) {
  ds_map_add(actionList, "DoAction1", action1);
}

var action2 = script_execute(getAction2, action2Key, action2Pad, padNum);

if (action2 != 0) {
  ds_map_add(actionList, "DoAction2", action2);
}
