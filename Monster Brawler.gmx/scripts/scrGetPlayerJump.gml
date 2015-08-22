///scrGetPlayerJump(jumpKey, jumpPad, padNum)

var jumpKey = argument0;
var jumpPad = argument1;
var padNum = argument2;

if (keyboard_check_pressed(jumpKey) || gamepad_button_check_pressed(padNum, jumpPad)) {
  return 1;
}

return 0;
