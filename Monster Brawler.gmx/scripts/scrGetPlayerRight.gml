///scrGetPlayerRight(rightKey, rightPad, padNum)

rightKey = argument0;
rightPad = argument1;
padNum = argument2;

if (keyboard_check(rightKey)) {
  return 1;
}

return 0;
