///scrGetPlayerAction1(action2Key, action2Pad, padNum)

var actionKey = argument0;
var actionPad = argument1;
var padNum = argument2;

if (keyboard_check_pressed(actionKey) || gamepad_button_check_pressed(padNum, actionPad)) {
  return 1;
}

return 0;