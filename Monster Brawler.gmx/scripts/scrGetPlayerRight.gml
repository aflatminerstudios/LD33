///scrGetPlayerRight(rightKey, rightPad, padNum)

var rightKey = argument0;
var rightPad = argument1;
var padNum = argument2;

if (keyboard_check(rightKey)) {
  return 1;
}

return 0;
