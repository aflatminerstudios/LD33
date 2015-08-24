///scrGetPlayerJumpRelease(jumpKey, jumpPad, padNum)

var jumpKey = argument0;
var jumpPad = argument1;
var padNum = argument2;

if (keyboard_check_released(jumpKey) || gamepad_button_check_released(padNum, jumpPad)) {
  return 1;
}

return 0;