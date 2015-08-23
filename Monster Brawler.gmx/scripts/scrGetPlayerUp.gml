///scrGetPlayerUp(upKey, vAxisPad, padNum)

var upKey = argument0;
var axisPad = argument1;
var padNum = argument2;

if (keyboard_check_pressed(upKey)) {
  return 1;
}

var gpVal = gamepad_axis_value(padNum, axisPad);

if (gpVal < -0.3) {
  return gpVal;
}

return 0;
