///scrGetPlayerRight(rightKey, rightPad, padNum)

var rightKey = argument0;
var axisPad = argument1;
var padNum = argument2;

if (keyboard_check(rightKey)) {
  return 1;
}

var gpVal = gamepad_axis_value(padNum, axisPad);

if (gpVal > 0.1) {
  return gpVal;
}

return 0;
