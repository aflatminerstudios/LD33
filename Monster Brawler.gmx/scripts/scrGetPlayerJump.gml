///scrGetPlayerJump(jumpKey, jumpPad, padNum)

var jumpKey = argument0;
var jumpPad = argument1;
var padNum = argument2;

if (keyboard_check_pressed(jumpKey)) {
  return 1;
}

return 0;
